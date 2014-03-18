set archivefile=%1
set archivefile=%archivefile:.log=.7z%
7z a %archivefile% %1
if errorlevel 1 goto err
if errorlevel 0 del %1
goto :EOF

:err
echo 7z returned %errorlevel%
exit /b %errorlevel%
