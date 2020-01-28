@echo off
cls
title Switch in C
:menu
echo.
echo.
echo Enter a number below
set /p x="Enter the number here: "

if "%x%" == "1" (
	echo Monday
	pause >nul
	cls
	goto menu
) else if "%x%" == "2" (
	echo Tuesday
	pause >nul
	cls
	goto menu
) else if "%x%" == "3" (
	echo Wednesday
	pause >nul
	cls
	goto menu
) else if "%x%" == "4" (
	echo Thursday
	pause >nul
	cls
	goto menu
) else if "%x%" == "5" (
	echo Friday
	pause >nul
	cls
	goto menu
) else if "%x%" == "6" (
	echo Saturday
	pause >nul
	cls
	goto menu
) else if "%x%" == "7" (
	echo Sunday
	pause >nul
	cls
	goto menu
) else (
	echo.
	color 0c
	echo ^=^=^=^=  Your entered value is invalid :( ^!  ^=^=^=^=
	echo ^=^=^=^= You must enter a number ^('^> 0 ^& ^< ^= 7'^) ^=^=^=^=
	pause >nul
	cls
	color 07
	goto menu
)