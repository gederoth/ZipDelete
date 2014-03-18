::# Zips and deletes logs. Uses %~dp0\zipanddeletelogfile.bat
set zipandel=%~dp0ZipAndDeleteLogFile.bat
if not exist "%zipandel%" (
  echo Missing "%zipandel%"
  exit
)
@SetLocal
set logpath=D:\Logfiles
forfiles /S /P %logpath% /M *.log /D -2 /C "cmd /c ^"%zipandel%^" @path"
forfiles /S /P %logpath% /M *.7z /D -90 /C "cmd /c del @path"
@EndLocal
