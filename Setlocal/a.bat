@echo off
setlocal ENABLEDELAYEDEXPANSION
	cls
	:menu
	set r=0
	set m=0
	for /l %%G in (1,1,3) do (
		echo ENTER NOTE FOR MODULE %%G
		set sum=0
		for /l %%X in (1,1,3) do (
			set /p y="ENTER NOTE %%X: "
			set /a sum=y+sum
		)
		set /a r=sum/3
			echo THE AVERAGE OF THREE NOTE IS !r!
			set /a m=r+m
	)
	set /a m=m/3
	echo.
	echo.
	echo The Avarege of all module is: [!m!]
	pause >nul
	cls
	goto menu
	
	setlocal DISABLEDELAYEDEXPANSION