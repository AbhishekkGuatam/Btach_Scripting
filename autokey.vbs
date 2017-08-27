' Create WScript Shell Object to access filesystem.
Set WshShell = WScript.CreateObject("WScript.Shell")

' Start / Run NOTEPAD.EXE
WshShell.Run "%windir%\notepad.exe"

' Select, or bring Focus to a window named `NOTEPAD`
WshShell.AppActivate "Notepad"

' Wait for 5 seconds
WScript.Sleep 1000

WshShell.SendKeys "Hello World!"
WshShell.SendKeys "{ENTER}"
WshShell.SendKeys "abc"
WshShell.SendKeys "{CAPSLOCK}"
WshShell.SendKeys "def"
