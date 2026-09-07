param(
    [string]$AdvancedSkeletonRoot = $env:AS_GNM_ROOT,
    [switch]$LaunchAfterInstall,
    [switch]$SelfTest
)

$ErrorActionPreference = "Stop"
if (-not $AdvancedSkeletonRoot) {
    throw "AdvancedSkeleton location was not supplied."
}
if ($env:AS_GNM_LAUNCH -eq "1") {
    $LaunchAfterInstall = $true
}
$logPath = Join-Path ([IO.Path]::GetTempPath()) "AdvancedSkeleton_GNM_Installer.log"
try {
    Set-Content -LiteralPath $logPath -Encoding UTF8 -Value ("Started: " + (Get-Date) + "`r`nAdvancedSkeleton: " + $AdvancedSkeletonRoot + "`r`nPowerShell: " + $PSVersionTable.PSVersion)
} catch {}
if ($SelfTest) {
    Add-Content -LiteralPath $logPath -Value "`r`nSelf-test passed."
    exit 0
}
$downloadUrl = "https://www.animationstudios.com.au/download/AdvancedSkeleton_GNM_Head_Creator_Windows.zip"
$asRoot = [IO.Path]::GetFullPath($AdvancedSkeletonRoot)
$divRoot = Join-Path $asRoot "AdvancedSkeletonFiles\div"
$gnmRoot = Join-Path $divRoot "gnm"
$activeFile = Join-Path ([IO.Path]::GetTempPath()) "AdvancedSkeleton_GNM_Installer.active"
$ownsActiveFile = $false
$tempRoot = Join-Path ([IO.Path]::GetTempPath()) ("AdvancedSkeleton_GNM_" + [guid]::NewGuid().ToString("N"))
$archive = Join-Path $tempRoot "AdvancedSkeleton_GNM_Head_Creator_Windows.zip"
$extractRoot = Join-Path $tempRoot "Extracted"

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "GNM Head Creator Setup"
$form.StartPosition = "CenterScreen"
$form.FormBorderStyle = "FixedDialog"
$form.MaximizeBox = $false
$form.MinimizeBox = $false
$form.ClientSize = New-Object System.Drawing.Size(460, 112)
$form.TopMost = $true

$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(18, 18)
$label.Size = New-Object System.Drawing.Size(424, 38)
$label.Text = "Downloading the GNM Head Creator..."
$form.Controls.Add($label)

$progress = New-Object System.Windows.Forms.ProgressBar
$progress.Location = New-Object System.Drawing.Point(18, 65)
$progress.Size = New-Object System.Drawing.Size(424, 22)
$progress.Style = "Marquee"
$progress.MarqueeAnimationSpeed = 24
$form.Controls.Add($progress)

# Reserve the install destination atomically. The marker lets Maya report an
# active download, and the owning process removes it when setup finishes.
for ($attempt = 0; $attempt -lt 2 -and -not $ownsActiveFile; $attempt++) {
    $stream = $null
    $writer = $null
    try {
        $stream = [IO.File]::Open(
            $activeFile,
            [IO.FileMode]::CreateNew,
            [IO.FileAccess]::Write,
            [IO.FileShare]::Read
        )
        $writer = New-Object IO.StreamWriter($stream)
        $writer.WriteLine([string]$PID)
        $writer.WriteLine($gnmRoot)
        $writer.Flush()
        $writer.Dispose()
        $writer = $null
        $stream = $null
        $ownsActiveFile = $true
    }
    catch [IO.IOException] {
        if ($writer) { $writer.Dispose() }
        elseif ($stream) { $stream.Dispose() }
        $existingLines = @(Get-Content -LiteralPath $activeFile -ErrorAction SilentlyContinue)
        [int]$existingPid = 0
        if ($existingLines.Count) {
            [void][int]::TryParse([string]$existingLines[0], [ref]$existingPid)
        }
        $existingProcess = $null
        if ($existingPid -gt 0) {
            $existingProcess = Get-Process -Id $existingPid -ErrorAction SilentlyContinue
        }
        if ($existingProcess) {
            $existingDestination = $gnmRoot
            if ($existingLines.Count -gt 1 -and $existingLines[1]) {
                $existingDestination = $existingLines[1]
            }
            [System.Windows.Forms.MessageBox]::Show(
                "Actively downloading to:`r`n$existingDestination`r`n`r`nTry again later.",
                "GNM Head Creator Setup",
                [System.Windows.Forms.MessageBoxButtons]::OK,
                [System.Windows.Forms.MessageBoxIcon]::Information
            ) | Out-Null
            exit 3
        }
        Remove-Item -LiteralPath $activeFile -Force -ErrorAction SilentlyContinue
    }
}
if (-not $ownsActiveFile) {
    throw "The GNM installer could not reserve its download location. Please try again."
}

try {
    New-Item -ItemType Directory -Force -Path $tempRoot, $extractRoot, $divRoot | Out-Null
    $form.Show()
    [System.Windows.Forms.Application]::DoEvents()
    Add-Content -LiteralPath $logPath -Value "`r`nOpening download connection."

    try {
        $client = New-Object System.Net.WebClient
        $task = $client.DownloadFileTaskAsync([uri]$downloadUrl, $archive)
        while (-not $task.IsCompleted) {
            [System.Windows.Forms.Application]::DoEvents()
            Start-Sleep -Milliseconds 50
        }
        $task.GetAwaiter().GetResult()
    }
    catch [System.Net.WebException] {
        $webError = $_.Exception
        if ($webError.Response -and $webError.Response.StatusCode) {
            $statusCode = [int]$webError.Response.StatusCode
            if ($statusCode -eq 404) {
                throw "The GNM download is not available on the server yet (HTTP 404)."
            }
            throw "The download server returned HTTP $statusCode."
        }
        switch ([string]$webError.Status) {
            "NameResolutionFailure" {
                throw "The website could not be found. Check your Internet connection or DNS."
            }
            "ConnectFailure" {
                throw "Could not connect to the download server. Check your Internet connection."
            }
            "Timeout" {
                throw "The connection to the download server timed out. Please try again."
            }
            "TrustFailure" {
                throw "Windows could not verify the download server's security certificate."
            }
            default {
                throw "The GNM download failed: $($webError.Message)"
            }
        }
    }
    catch {
        throw "The GNM download failed: $($_.Exception.Message)"
    }

    if (-not (Test-Path -LiteralPath $archive) -or
        (Get-Item -LiteralPath $archive).Length -lt 100MB) {
        throw "The server returned an incomplete GNM download. Please try again later."
    }

    $label.Text = "Installing the GNM Head Creator..."
    [System.Windows.Forms.Application]::DoEvents()
    Expand-Archive -LiteralPath $archive -DestinationPath $extractRoot -Force
    $payload = Join-Path $extractRoot "gnm"
    $payloadExe = Join-Path $payload "runtime\GNMHeadCreator\GNMHeadCreator.exe"
    $payloadModel = Join-Path $payload "google_gnm\gnm\shape\data\versions\v3_0\gnm_head.npz"
    $payloadVersion = Join-Path $payload "version.txt"
    if (-not (Test-Path -LiteralPath $payloadExe) -or
        -not (Test-Path -LiteralPath $payloadModel) -or
        -not (Test-Path -LiteralPath $payloadVersion)) {
        throw "The download does not contain a complete GNM Head Creator."
    }

    if (Test-Path -LiteralPath $gnmRoot) {
        Remove-Item -LiteralPath $gnmRoot -Recurse -Force
    }
    Move-Item -LiteralPath $payload -Destination $gnmRoot

    $installedExe = Join-Path $gnmRoot "runtime\GNMHeadCreator\GNMHeadCreator.exe"
    if (-not (Test-Path -LiteralPath $installedExe)) {
        throw "GNM Head Creator installation did not finish correctly."
    }

    Add-Content -LiteralPath $logPath -Value "`r`nInstallation completed successfully."
    $label.Text = "Installation completed."
    [System.Windows.Forms.MessageBox]::Show(
        $form,
        "GNM Head Creator is installed and ready.",
        "GNM Head Creator Setup",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Information
    ) | Out-Null
    $form.Close()
    if ($LaunchAfterInstall) {
        Start-Process -FilePath $installedExe
    }
}
catch {
    try { Add-Content -LiteralPath $logPath -Value ("`r`nERROR: " + $_.Exception.ToString()) } catch {}
    $label.Text = "Setup could not continue."
    [System.Windows.Forms.MessageBox]::Show(
        $form,
        "GNM Head Creator could not be installed.`r`n`r`n$($_.Exception.Message)",
        "GNM Head Creator Setup",
        [System.Windows.Forms.MessageBoxButtons]::OK,
        [System.Windows.Forms.MessageBoxIcon]::Error
    ) | Out-Null
    $form.Close()
    exit 1
}
finally {
    if (Test-Path -LiteralPath $tempRoot) {
        Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
    if ($ownsActiveFile -and (Test-Path -LiteralPath $activeFile)) {
        $markerPid = Get-Content -LiteralPath $activeFile -First 1 -ErrorAction SilentlyContinue
        if ([string]$markerPid -eq [string]$PID) {
            Remove-Item -LiteralPath $activeFile -Force -ErrorAction SilentlyContinue
        }
    }
}
