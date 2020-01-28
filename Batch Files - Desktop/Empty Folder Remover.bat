
	@echo off
	cls
	setlocal enabledelayedexpansion
	title Empty folder removed
	:menu
	echo.
	echo.
	echo This is empty folder remover by ivandro ismael Gomes Jao
	echo.
	echo Enter the driver letter and press enter ^^(Path Are Supported^^)
	REM set /p dvr="Type here=> "
		
		REM NOTE ^^!^^! ARE NOT SUPPORTED
		for /d /r "d:\Desktop\" %%G in ("*") do (
			echo %%G\
			pause >nul
			if exist "%%G\Command_prompt.bat" (
				echo Files found^^!
			) else (
				echo.
				echo Files wasn't found^^!
			)
		)
		pause >nul
		cls 7 && goto :menu