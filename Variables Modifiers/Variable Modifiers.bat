@echo off
setlocal
set FileName=test.cmd

for %%i in (%FileName%) do set FullPath=%%~fi

echo Original param was '%FileName%'; full path is '%FullPath%'