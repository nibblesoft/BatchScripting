@echo off
	cls
		echo Enter you numbers and press enter
	set /p x="Enter nbr 1: "
	set /p y="Enter nbr 2: "
		set /a sum = (x + y) * 2
		echo %sum%
		pause >nul