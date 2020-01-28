
REM By Ivandro Ismael


:menu
@echo off
	cls
	setlocal
	set /p x=" Enter your number: "
	set /p y=" Enter your number: "

:operation
	
	REM OPERATION Arithmetic AND Comparation
	echo -------------
	echo.
	echo.
	echo Arithmetic
	echo.
	echo 1) ^= ^+
	echo 2) ^= ^-
	echo 3) ^= ^*
	echo 4) ^= ^/
	echo.
	echo -------------
	echo.
	echo Comparation
	echo.
	echo 5) ^>
	echo 6) ^<
	echo 7) ^=
	echo 8) ^>^=
	echo 9) ^<^=
	echo 10) ^<^>
	echo.
	echo.
	echo -------------
	
	 set /p o= "Enter a operation (1-10)"
	 
	 
	 if "%o%" == "1" (
		set /a r=x+y
			if %r% gtr 0 (
		@echo %x%^+%y%^:"%r%"
		pause >nul
		goto menu
		)
	 )
	 if "%o%" == "2" (
	 
	 ) 
	 if "%o%" == "3" (
	 )
	 if "%o%" == "4" (
	 )
	 if "%o%" == "5" (
	 )
	 if "%o%" == "6" (
	 )
	 if "%o%" == "7" (
	 )
	 if "%o%" == "8" (
	 )
	 if "%o%" == "9" (
	 )
	 if "%o%" == "10" (
	 ) else (
		echo Invalid operation
		ping localhost -n 3 >nul
		cls >nul
		goto operation
	 )
	 endlocal