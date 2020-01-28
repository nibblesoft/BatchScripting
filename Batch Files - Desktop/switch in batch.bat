@echo off
cls
setlocal enabledelayedexpansion
title Switch in C
:menu
echo.
echo.
echo ENTER A NUMBER BELOW
set /p "X=ENTER THE NUMBER HERE BETWEEN (1-7): "

	if !x! == 1 (
		echo.
		echo.
		echo Monday
		pause >nul
		cls
		goto menu
	) else if !x! == 2 (
		echo.
		echo.
		echo Tuesday
		pause >nul
		cls
		goto menu
	) else if !x! == 3 (
		echo.
		echo.
		echo Wednesday
		pause >nul
		cls
		goto menu
	) else if !x! == 4 (
		echo.
		echo.
		echo Thursday
		pause >nul
		cls
		goto menu
	) else if !x! == 5 (
		echo.
		echo.
		echo Friday
		pause >nul
		cls
		goto menu
	) else if !x! == 6 (
		echo.
		echo Saturday
		pause >nul
		cls
		goto menu
	) else if !x! == 7 (
		echo.
		echo.
		echo Sunday
		pause >nul
		cls
		goto menu
	) else (
		echo.
		echo.
		color 0c
		echo ^=^=^=^=  Your entered value is invalid :( ^!  ^=^=^=^=
		echo ^=^=^=^= You must enter a number ^('^> 0 ^& ^< ^= 7'^) ^=^=^=^=
		pause >nul
		cls
		color 07
		goto menu
	)