
:menu
@echo off
	cls
	color 07
	echo.
	echo.
	echo.
	
	set /p x=" Enter a number between (1/20): "
	
	if %x% gtr 0 (
		if %x% leq 20 (
			goto ismael
		) else (
			cls
			goto error
		)
	) else (
		cls
		goto error
	)
	
:ismael
		if "%x%" == "1" (
			echo.
			echo.
			echo ONE
			echo.
			echo.
			pause >nul
			goto menu
		) else if "%x%" == "2" (
			echo.
			echo.
			echo TWO
			echo.
			echo.
			pause >nul
			goto menu
		) else if "%x%" == "3" (
			echo.
			echo.
			echo THREE
			echo.
			echo.
			pause >nul
			goto menu
		) else if "%x%" == "4" (
			echo.
			echo.
			echo FOUR
			echo.
			echo.
			pause >nul
			goto menu
		) else if "%x%" == "5" (
			echo.
			echo.
			echo FIVE
			echo.
			echo.
			pause >nul
			goto menu
		) else if "%x%" == "6" (
			echo.
			echo.
			echo SIX
			echo.
			echo.
			pause >nul
			goto menu
		) else if "%x%" == "7" (
			echo.
			echo.
			echo SIX
			echo.
			echo.
			pause >nul
			goto menu
		)
		
		
		
:error
	color c
	echo.
	echo.
	echo Enter a valid number (1/20)
	echo.
	echo.
	pause 1>nul
	call :menu