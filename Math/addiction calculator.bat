
@echo  off
cls
:loop
color 07
Title Addiction Calculator
setlocal enabledelayedexpansion
echo.
echo.
set /p x="Enter your nbr1 here: "
set /p y="Enter your nbr2 here: "
	set /a sum=!x!+!y!
	
	echo %errorlevel%
	pause >nul
	
	if errorlevel 1 (
		echo you get errorlevel
		pause >nul
	) else (
	
		echo ("The Sum of (!x! + !y!= !sum! )")
		pause >nul
			echo Do you want to continue (y/n)^^?
			for %%p in (y,x,sum) do (
				set %%p=
			)
	)
		set /p x="Enter a option and press enter: "
	
	if /i "!x:~0,1!" == "y" (
		cls
		goto loop
	) else if /i "!x:~0,1!" == "n" (
		echo.
		echo You entere no as you option
		pause
		exit
	) else (
		cls
		echo Enter a valid option
		pause >nul
		goto loop
	)
	