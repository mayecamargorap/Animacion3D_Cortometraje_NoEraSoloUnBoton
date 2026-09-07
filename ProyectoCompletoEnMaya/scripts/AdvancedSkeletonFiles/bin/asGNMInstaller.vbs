Option Explicit

Dim shell, fso, scriptPath, advancedSkeletonRoot, launchValue, command
Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

If WScript.Arguments.Count < 2 Then
    WScript.Quit 2
End If

advancedSkeletonRoot = WScript.Arguments(0)
launchValue = WScript.Arguments(1)
scriptPath = fso.BuildPath(fso.GetParentFolderName(WScript.ScriptFullName), "asGNMInstaller.ps1")

command = "powershell.exe -NoProfile -NonInteractive -ExecutionPolicy Bypass -WindowStyle Hidden" _
    & " -File """ & scriptPath & """" _
    & " -AdvancedSkeletonRoot """ & advancedSkeletonRoot & """"

If launchValue = "1" Then
    command = command & " -LaunchAfterInstall"
End If
If WScript.Arguments.Count > 2 Then
    If LCase(WScript.Arguments(2)) = "selftest" Then
        command = command & " -SelfTest"
    End If
End If

' Window style 0 keeps the PowerShell console completely hidden.
shell.Run command, 0, False
