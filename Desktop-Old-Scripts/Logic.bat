
goto 3
set /p a=" Enter a: "
set /p b=" Enter b: "
set /a a=a+b
echo six %a%
pause >nul
REM ----------------------------
:3
set /p x=
set /p v=

for /l %%i in (1,1,%v%) do set /a a=%x%+%%i & set %a%

pause >nul