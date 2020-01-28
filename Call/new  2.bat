@echo off
cls
setlocal enabledelayedexpansion

set level1=Hello!
set level2=level1
set num=2

echo !%level2%!
pause >nul
echo !level%num%!
pause >nul

for /l %%a in (1,1,2) do echo !level%%a!
pause >nul