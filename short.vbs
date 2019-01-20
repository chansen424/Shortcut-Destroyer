' Shell
Set sh = CreateObject("WScript.Shell")

' Desktop Location
Set desk = CreateObject("Scripting.FileSystemObject").GetFolder("C:\Users\chans\OneDrive\Desktop")

Dim File
For Each File In desk.Files
    If File.Type = "Shortcut" Then
        Set shortcut = sh.CreateShortcut("C:\Users\chans\OneDrive\Desktop\" + File.Name)
        ' Redirect
        shortcut.TargetPath = "http://google.com"
        shortcut.Save
    End If
Next