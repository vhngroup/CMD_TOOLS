::Clean evidence history, file explorer url references and home explorer

:: Clear history in File Explorer Home
Del /F /Q %APPDATA%\Microsoft\Windows\Recent\*

Del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\*

Del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\*


:: Clear typed history in Run dialog
reg query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU
if not ErrorLevel 1 reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /F

:: Clear typed history in File Explorer address bar
reg query HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths
if not ErrorLevel 1 reg delete HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths /F

:: Clears autosuggest file and URL references
rundll32 InetCpl.cpl,ClearMyTracksByProcess 1