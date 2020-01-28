@echo off
	cls
	setlocal ENABLEDELAYEDEXPANSION
	echo Enter the loop count
	set /p c="Enter your nbr here: "
		set /a a=0
		set /a sum=0
		:loop
	if !a! lss !c! (
		set /p nbr="Enter a nbr: "
		set /a sum=sum+nbr
		set /a a+=1
		goto loop
	) else (
		echo you resultat is !sum!
		pause >nul
	)