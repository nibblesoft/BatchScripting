
	REM SCRIPTS BY Ivandro Ismael Gomes Jao
@echo off
	cls
	title Disk Formater v1 by: Ivandrofly
	echo.
	echo.
	echo.
	echo ========================================================================
	echo THIS IS DISK FORTAMER TOOL BY IVANDRO ISMAEL GOMES JAO
	echo.
	echo Check what letter the driver you want to format is assigned to
	echo and enter that letter make sure you entered the valid letter 
	echo don't enter system driver or your back up driver in this case the
	echo the d: driver, if you want to format your system driver you can download
	echo another tool[ADVANCE] which are develloped for formating drivers
	echo ========================================================================
	pause && cls
	echo.
	echo.
	echo.
	echo Enter the driver letter and press enter
	echo type only the letter no colon needed
	set /p driver="Type here: "
		
		if /i "!driver!" == "c" (
			
		) else if /i "!driver!" == "d" (
			echo You entere the driver ^<^<D^>^>
			echo if this is you BACKUP driver do not proside the
			echo scripts... unless you want to deleted everything
			echo one you driver 'D'.
			pause >nul && cls
				echo.
				echo.
				echo.
				echo Do you want to continue the scripts?
					set val="Type (y/n): "
						if /i "!val!" == "n" (
							echo.
							echo.
							echo The scripts ins't going to be ran
							pause >nul && cls && exit /b
						) else if /i "!val!" == "y" (
							echo.
							echo.
							echo You enterd yes, the scripts is goind to run in 
							echo less then 5 seconds
							pause >nul && cls && exit /b
						) else if /i "!val!" == "" (
							echo.
							echo.
							echo Nothing entered, make sure you
							echo entered a value to the variable
							echo and press ENTER
							pause >nul && cls && exit /b
						) else (
							echo.
							echo.
							echo The value you just entered isn't defined
							echo enter the valid one and press enter
							pause >nul && cls && exit /b
						)
			
		) else if /i "!driver!" == "" (
			echo.
			echo.
			echo Nothing entered to the variable
			echo Make sure you input a value to the variable and
			echo press ENTER
			pause >nul
			
		) else (
			echo.
			echo.
			echo The value you just entered isn't the valid one
			echo make sure you entered the defined letter and press
			echo ENTER...
			pause >nul
		)
		pushd "%driver%:\" >nul
		if %errorlevel% neq 0 (
			echo the driver letter you entered isn't assigned
			echo make sure you entered the valid letter and press enter
			pause >nul
			cls
			rem this line will restore
			set "driver="
			
		) else (
			rem the codes will bee wrote in this
			rem statements
			format 
			
		)