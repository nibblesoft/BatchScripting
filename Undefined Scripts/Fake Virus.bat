REM Made by Ivandrofly

:MENU
@echo off
title VIRUS
setlocal enabledelayedexpansion
cls
echo.
echo.
echo.
echo.                  ::::::::: Trojan Horse Virus has been detected :::::::::

set /p m= Would you like to delete the file? (y/n): 

	if %m%== y (
		goto yes
	) else if %m%== n (
		goto no
	)

goto menu

REM This is the fake proccessing :-)
:yes
echo.
echo.
echo.
set /a var += 10
echo PROCCESSING... [!var!%%]
ping localhost -n 2 > nul
cls
if !var! equ 100 (goto end_preccesing)
goto yes

:end_preccesing
color a
echo.
echo.
echo                All Virues were deleted!
echo                Now your PC is cleaned!
echo.
echo.
pause > nul
goto finished

REM End command Finished
:finished
start ccleaner /auto
cls
goto menu

REM End command no
:no
color c
dir /s /o
ECHO.
echo                ALL YOUR FILES HAS BEEN DELETED BY A VIRUS :(
pause > nul
shutdown -s -t 60 -c "SYSTEM CRASH WILL OCURR ON SHUTDOWN"
pause > nul
shutdown -a