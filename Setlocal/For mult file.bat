@echo off
cls
setlocal enabledelayedexpansion
set LIST=
    for %%i in (*) do set LIST=%LIST% %%i
    echo %LIST%
	pause
	
	set LIST=
    for %%i in (*) do set LIST=!LIST! %%i
    echo %LIST%