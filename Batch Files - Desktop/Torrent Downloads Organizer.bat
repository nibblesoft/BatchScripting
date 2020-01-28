
@echo off
	cls
	title Auto Files Ranger
	pushd "d:\utorrent\" >nul
	if %errorlevel% geq 1 (
		echo.
		echo The driver wasn't found
		echo check your driver and try again
		pause >nul && cls && goto :eof
	) else (
		if exist .\*.mp3 (
			echo.
			echo There are files with extension *.mp3
			echo Do you want to move them to music folder(y/n)?
			set /p mov="Enter your option here and press enter: "
				if /i "!mov!" == "" (
					echo.
					echo Nothing entered in variables 
					echo input a value to variables
					timeout /t 3 /nobreak >nul
				) else (
					if defined music (
						move .\*.mp3 %music%
					) else (
						echo.
						echo the variable music ins't defined 
						echo you can move it using "%userprofile%\music"
						pause >nul && cls
					)
				)
		) else if exist .\*.jpg (
			:pic
			echo There are picture files
			echo do you want to move them to DEFAULT picture folder?
			set /p pic="Enter (y/n): "
				if /i "!pic!" == "" (
					echo.
					echo Nothing entered, try inpunt a value to the
					echo variable and make sure you entered the demanded
					pause >nul && cls && goto :pic
				) else if /i "!pic!" == "y" (
					echo.
					echo The user just input YES					
				rem this line will containe code whose ill allow to move all pictures
				rem found in torrent folder to defalut pictures folder
				) else if /i "!pic!" == "n" (
				
				)
		)
	
	)
	