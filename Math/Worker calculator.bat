@echo off
cls
setlocal ENABLEDELAYEDEXPANSION
:menu
		REM MM = MONTANT MENSEL
		set MM1=3500
		set MM2=2500
		echo.
		echo.
		REM THIS LINE ALLOW USER TO ENTER THE VALUE TO CALCULATE
	set /p x=" Enter numbers of worker with (3500 Dhr): "
	set /p x2=" Enter number of worker with (2500 Dhr): "
		
		REM OPERATION ARITHMETIC
		set /a MM1=(!MM1!*!x!*30)
		set /a MM2=(!MM2!*!x2!*30)
		
		REM THIS LINE WILL MILTIPLIC MONTANTE MENSAL TO ANUAL
		set /a SA1=(!MM1!*12)
		set /a SA2=(!MM2!*12)
		echo.
		echo.
		echo.
		REM THIS LINE WILL SHOW THE RESULTAT
		
	echo (THE MONTHLY SALARIE DE 3500 DHR IS : FOR !X! WORKER IS (!MM1! DHR))
	echo (THE YEAR SALARIE OF 3500 DHR IS : FOR !X! WORKER IS (!SA1! DHR))
	echo.
	echo.
	echo (THE MONTHLY SALARIE DE 2500 DHR IS : !MM2! DHR)
	echo (THE YEAR SALARIE OF 2500 DHR IS : !SA2! DHR)
		echo.
		echo.
		echo.
		pause >nul
	goto menu
	endlocal