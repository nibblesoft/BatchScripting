
REM You have to run it as admin
@echo off
	cls
	echo.
	echo.
	set /p x=" Enter stoping number: "
		for /l %%G in (1,1,%x%) do (
			tracert 192.168.1.%%G
		)
	pause >nul


rem this live ain't need	
:ping_2
	set /p y= "Enter end for ping: "
			set i = 1
		:loop
		if %i% lss %y% (
			ping -a 192.168.1.%i%
			set /a i = i + 1
			goto loop
		) else (
		echo finished
		pause >nul
		)
		pause >nul