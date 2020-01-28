@echo off
	cls
	setlocal ENABLEDELAYEDEXPANSION
	echo enter nbr
	set /p n=": "
	for /l %%g in (1,1,12) do (
		set /a r=n*%%g
		echo %n%*%%g=!r!
	)
	pause >nul
	setlocal DISABLEDELAYEDEXPANSION