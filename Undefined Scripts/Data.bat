	REM by  Ivandro Ismael
:menu	
	@echo off
	cls
:day
	title Day "Jour"
	cls
	color 17
	echo.
	echo.
	echo.
	set /p y= " Enter le jour (1-31): "
	if %y% LEQ 31 (
		REM Jour est %y%
		goto month
	) else if not %y% LEQ 31 (
		cls
		color c7
		echo "(Enter a valid value (1-31) )"
	pause > nul
	color 07
	goto day
	)
	
:month
	title MONTH "Mois"
	cls
	color 17
	echo.
	echo.
	echo.
	set /p x= "Enter Mois (1-12): 
	if %x% LEQ 12 (
	REM Moth is %x% 
	goto monthname
	) else if not %x% LEQ 12 (
	cls
	echo.
	color c7
	echo ERROR 
	echo (Enter valid number 1-12)
	echo.
	pause >nul
	color 07
	goto month
)

:monthname
	if "%x%" == "1" (
	set Janvier=1
		set x=Janvier
	goto end
	) else if "%x%" == "2" (
	set Fevrier=2
		set x=Fevrier
	goto end
	) else if "%x%" == "3" (
	set Mars=3
		set x=Mars
	goto end
	) else if "%x%" == "4" (
	set Avril=4
		set x=Avril
	goto end
	) else if "%x%" == "5" (
	set Mai=5
		set x=Mai
	goto end
	) else if "%x%" == "6" (
	set Juin=6
		set x=Juin
	) else if "%x%" == "7" (
	set Juillet=7
		set x=Juillet
	goto end
	) else if "%x%" == "8" (
	set Aout=8
		set x=Aout
	goto end
	) else if "%x%" == "9" (
	set Septembre=9
		set x=Septembre
	goto end
	) else if "%x%" == "10" (
	set Octubre=10
		set x=Octubre
	) else if "%x%" == "11" (
	set Novembre=11
		set x=Novembre
	goto end
	) else if "%x%" == "12" (
	set Decembre=12
		set x=Decembre
	goto end
	)

:end
	echo.
	echo.
	echo The date is: %y%-%x%
	echo.
	echo.
	pause >nul
	goto menu

	REM EQU - equal =
    REM NEQ - not equal <>
    REM LSS - less than <
    REM LEQ - less than or equal <=
    REM GTR - greater than >
    REM GEQ - greater than or equal >=