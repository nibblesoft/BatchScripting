
:start
@echo off
	cls
	echo for menu 1 type menu
	echo for menu 2 type menu2
	set /p a= "enter menu number: "
	
if "%a%" == "menu1" (
		cls
		goto menu1
		)
		if "%a%" == "menu2" (
		cls
		goto menu2
		) else (
		pause >nul
		cls
		goto start
		)
		
:menu1
	
	echo this is menu 1 
	set /p m= " enter here"
	
	if "%x%" == "1" (
	goto msg
	) else (
	cls
	REM here the value "1" will be assigned in var %x%
	set x=1
	goto error
	)

:menu2

	echo this is menu 2
	pause >nul
	 set /p g= "enter here: "
		if "%g%" == "1" (
	goto msg
) else (
	cls
	REM here the value "2" will be assigned in var %x%
	set x=2
	goto error
	)
	

	:error
	echo.
	echo THIS IS LABEL ERROR
	echo.
	pause
	
	if "%x%" == "1" (
	echo THIS IS ERROR MENU1
	pause >nul
	goto menu
	) else if "%x%" == "2" (
		echo THIS IS ERROR MENU2
		pause >nul
		goto menu2
	)
	
	:msg
	echo MGS
	pause >nul
	goto start