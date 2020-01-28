
:menu
	@echo off
	cls
	for %%z in (x,y,i,q,l) do (
	set %%z=
	)
	
	echo.
	
	set /p x=" Entre The Valeu to start here: "
	set /p y=" Entre The Valeu to end here: "
	
:loop	
	for /l %%y in (1,1,%y%) do for %%x in (%x%) do (
	set /a r=%%y*%%x
	echo %%x*%%y = %%r
	pause >nul
	)
	goto :menu