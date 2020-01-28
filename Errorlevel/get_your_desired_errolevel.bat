

@echo off
call :setError 8   9   1   3
rem           %1  %2  %3   %4
echo %errorlevel%
goto :eof

:setError
exit /B %4