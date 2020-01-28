
@echo off
cls
setlocal enabledelayedexpansion
:menu
	color 07
	echo.
	echo.
	echo.
	set /p x= "Enter value for x: "
	set /p y= "Enter value for y: "
	:: || GOTO :MENU WILL NOT WORK BECAUSE ALL "set /a var=char+char returns '0'"
	::
set /a m="%x%"*"%y%" 2>nul || goto :menu
	
	if !m! GTR 0 (
		cls
		goto pos
	) else if !m! lss 0 (
		cls
		goto neg
	) else (
		echo You Entered [!m!] Invalid Value^^!
		pause >nul
		goto :menu
	)
	
:pos
	
	color 17
	echo.
	echo THIS IS POSSITIVE VALUE
	echo.
	pause > nul
	goto menu
	
:neg
	@echo off
	cls
	color c7
	echo.
	echo THIS VALUE IS NEGATIVE
	echo.
		pause > nul
	goto menu

	
	REM EQU - equal
    REM NEQ - not equal
    REM LSS - less than
    REM LEQ - less than or equal
    REM GTR - greater than
    REM GEQ - greater than or equal