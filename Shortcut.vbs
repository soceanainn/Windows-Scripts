' Shortcut.vbs - Create a Desktop Shortcut.
' VBScript to create .lnk file
' Author Séamus Ó Ceanainn
' Email seamusoceanainn@gmail.com
' ---------------------------------------------------------------------------------
Option Explicit
Dim objShell, objDesktop, objLink
Dim strAppPath, strWorkDir, strIconPath, strName
Dim length

' ---------------------------------------------------------------------------------
' Variables to change
' If you're not sure of Icon Path leave blank
' strAppPath needs to be in triple quotes (""") otherwise there will be an error

strWorkDir ="C:\"
strAppPath = """C:\Program Files\Internet Explorer\iexplore.exe"""
strName = "Internet Explorer"
strIconPath = ""

' ---------------------------------------------------------------------------------
' Section which adds the shortcut's key properties
' Don't change anything below the line unless you know what you are doing
' ---------------------------------------------------------------------------------
If Len(strIconPath) < 1 Then 
	strIconPath = Left(strAppPath, Len(strAppPath) - 1)
	strIconPath = Right(strIconPath, Len(strIconPath) - 1)
	strIconPath = (strIconPath & ",0")
End If
Set objShell = CreateObject("WScript.Shell")
objDesktop = objShell.SpecialFolders("AllUsersDesktop")
Set objLink = objShell.CreateShortcut(objDesktop & "\" & strName & ".lnk")
objLink.Description = strName
objLink.TargetPath = strAppPath
objLink.IconLocation = strIconPath
objLink.WindowStyle = 3
objLink.WorkingDirectory = strWorkDir
objLink.Save

WScript.Quit

' End of creating a desktop shortcut