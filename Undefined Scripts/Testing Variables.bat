REM This is a comment
:menu
echo off
cls
echo.
echo.
echo        This is Ivandrofly's program
echo.
echo.

set /p lk=" Type follow numbers (1 or 2): "

if "%lk%" == "1" (
	goto Ivandrofly
) else if "%lk%" == "2" (
	goto "Last Kings"
) else (
	@echo off
	cls
	color 0c
	echo.
	echo.
	echo		UNKNOWN COMMAND PLEASE TRY AGAIN!!!
	echo.
	echo.
	pause >nul
	color 07
	goto menu
	)

:Ivandrofly

	msg * This is Var Ivandrofly
	pause >nul
	cls
	goto menu

:"last kings"

	msg * This is Last Kigns
	goto menu