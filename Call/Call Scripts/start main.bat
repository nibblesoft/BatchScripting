@Echo off
setlocal
cls

CALL function.bat 10 first
Echo %_description% - %_number% 
pause >nul
CALL function.bat 15 second
Echo %_description% - %_number% 
pause >nul