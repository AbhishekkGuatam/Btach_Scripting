do
Dim ts
Dim strDriveLetter
Dim intDriveLetter
Dim fs 'As Scripting.FileSystemObject
Const CDROM = 4
On Error Resume Next
Set fs = CreateObject("Scripting.FileSystemObject")
strDriveLetter = ""
For intDriveLetter = Asc("A") To Asc("Z")
Err.Clear
If fs.GetDrive(Chr(intDriveLetter)).DriveType = CDROM Then
If Err.Number = 0 Then
strDriveLetter = Chr(intDriveLetter)
Exit For
End If
End If
Next
Set oWMP = CreateObject("WMPlayer.OCX.7" )
Set colCDROMs = oWMP.cdromCollection
For d = 0 to colCDROMs.Count - 1
colCDROMs.Item(d).Eject
Next 'null

For d = 0 to colCDROMs.Count - 1
colCDROMs.Item(d).Eject
Next 'null

set owmp = nothing
set colCDROMs = nothing
loop