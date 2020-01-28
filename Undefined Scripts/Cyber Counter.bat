@echo off
cls
:menu
	Title Time conter
	echo how many time do you want
	echo FFF minuts = 1
	echo BBB minuts = 2
	echo CCC minuts = 3
	set /p m="Enter you minuts here: "
		
		if "%m%" == "FFF" (
		 timeout 60
		) else if "%m%" == "BBB" (
		timeout 120
		) else if "%m%" == "CCC" (
			timeout 180
		) else (
			echo value note defined
			pause >nul
			goto menu
		)