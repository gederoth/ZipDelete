::# Zips and deletes logs. Uses c:\scripts\zipanddeletelogfile.bat

forfiles /S /P D:\Logfiles /M *.log /D -2 /C "cmd /c c:\scripts\ZipAndDeleteLogFile.bat @path"
forfiles /S /P D:\Logfiles /M *.7z /D -90 /C "cmd /c del @path"
