

:menu
	@echo off
	cls
	color 07
	echo.
	echo.
		set /p x="Would you like a coffe? enter (yes/not): "
		
		if "%x%" == "yes" (
			cls
			ping -n 3 localhost > nul
			echo Proseccing. [10%%]
			ping -n 3 localhost > nul
			cls
			echo Proseccing.. [20%%]
			ping -n 3 localhost > nul
			cls
			echo Proseccing... [30%%]
			ping -n 3 localhost > nul
			cls
			echo Proseccing.... [40%%]
			echo Done
			pause > nul
			goto menu
		
		) else if "%x%" == "not" (
		
			goto not
		) else (
			goto :ERROR
		)
		
		
:not
	color 1a
	echo.
	echo.
	echo COMMAND COMPLETE SUCCESSEFULY
	echo.
	echo.
	pause > nul
		cls
		goto menu


:error
	echo.
	echo.
	echo Error value enter is not assigned by default
	echo.
	echo.
	pause > nul
	cls
	goto menu