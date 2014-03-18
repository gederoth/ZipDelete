set archivefile=%1
set archivefile=%archivefile:.log=.7z%
7z a %archivefile% %1
del %1