@echo off
	:menu
	cls
	setlocal enabledelayedexpansion
	set /p n="type nbr"
	
	if /i "!n!" gtr "1" (
	for /l %%I in (1,1,%n%) do (
			set /p name%%I="Type name %%I: "
		)
		
		for /l %%C in (1,1,%n%) do (
			echo !name%%C!
		)
		pause >nul
		goto menu
	) else (
		echo your nbr is less than 2
		pause >nul
		goto menu
	)