
@echo off
	cls
:menu
	if exist "%startup%\*.*" (
		echo File Exist
		echo Do you want to delete them (y/n)
		
		set /p x=" Enter (y/n)"
			if "%x%" == "y" (
				del "%startup%\*.*"
				pause
			) else if "%x%" == "n" (
				echo Not file deleted
				pause >nul
				goto menu
			)
	) else (
		Echo FILES DOES'T EXIST
		pause >nul
		goto menu
	)