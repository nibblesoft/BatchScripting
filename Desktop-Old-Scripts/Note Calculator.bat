@echo off
	cls

:menu
	echo.
	echo.
	echo.
set /p nbr=" Type your total number: "
	set r=0
	for /l %%g in (1,1,%nbr%) do for %%i in (*) do (
	set /p i=" Enter nbr: "
	set /a r=i+r
	)
	echo.
	echo.
	echo.
	set /a r=(r / %nbr%)
	echo Resultat is: (%r%)
		if %r% gtr 9 (
			if %r% leq 15 (
				echo Good :(
				pause >nul
				cls
				goto menu
			) else (
				Echo Congratulation
				pause >nul
				cls
				goto menu
			)
		) else (
			echo.
			echo.
			echo Very bad
			pause >nul
			cls
			goto menu
		)
	pause >nul
	goto loop