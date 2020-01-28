
@echo off
	cls
	title Duplicate Remover
	set local enabledelayedexpansion
	echo.
	echo.
	echo.
	set /p "dvr=Type the driver letter: "
		for /r "%dvr%:\" %%G in ("*.mp4","*.mp3","*.avi","*.jpg") do (
			REM exemple Ivandro.mp4 ^<^> "Ivandro - Copy.mp4"
			if exist "%%~nxG"
		)