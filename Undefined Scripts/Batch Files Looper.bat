@echo off
	cls
	echo enter a nbr to loop counter
	set /p i="Enter a nbr: "
	set r=0
	for /l %%g in (1,1,%i%) do (
		set /p y="Enter a nbr: "
		set /a r=r+y
	)
	echo %r%
	pause >nul