ZipDelete
=========
Zips log files older than 2 days, deleting them if they are successfully zipped.
Also deletes zip files older than 90 days.

### Testing
Modify `ZipDelete.bat` to set logpath=`%~dp0Logfiles` and execute it. You can always
`git checkout master` (blah blah) to restore the test files.

