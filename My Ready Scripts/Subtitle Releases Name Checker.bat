
REM SCRIPT BY IVANDRO ISMAEL GOMES JAO / @ivandrofly
REM v5.5
@echo off
	cls
	setlocal enabledelayedexpansion
		REM IF ERRORLEVEL n statements should be read as IF Errorlevel ^>= number
		REM i.e.
		REM IF ERRORLEVEL 0 will return TRUE when the errorlevel is 64
		REM An alternative and often better method of checking Errorlevels is to use the string syntax along with the %ERRORLEVEL% variable:
	title Release Named Clipper v5.5
:menu
	cls
	echo.
	echo.
	echo.
	echo                       =======================================
	echo                           Copy and paste the Sub-Path^^!
	echo                       =======================================
	rem this command will show us current location in the scripts
	echo.
	echo Your current location is - %__cd__%
	echo.
	set "location="
	Rem we can't use ===^> without any symbols back it will return error
	set /p "location= +===> "
	
	rem i have used ^(trailing backslash\^)
		if /i "!location!" == "" (
			echo.
			echo.
			echo No value entered, try again
			echo and enter a value to variable^^!
			echo make sure the location you entered is a
			echo driver and path...
			pause >nul
			cls && goto :menu
		)
		
		if /i "!location!\" == "%~dp0" (
			echo.
			echo                         ====================================
			echo                            You are running the scripts in
			echo                               same folder as subtitles
			echo                         =====================================
			pause
			echo Do you want to continue?
			set /p "userinput=type here (y/n): "
				if /i "!userinput!" == "n" (
					rem if user entered n it will simple quit the scripts
					exit /b
				) else if /i "!userinput!" == "" (
					echo.
					echo No value entered in variable
					echo input a value and press enter
					time 
				)
		)
		
	REM THIS LINE WILL CHECK IF THE PATH ENTERED IS THE VALID ONE
	REM IF NOT IT SHALL SHOW YOU ERROR WARNING
	pushd "!location!\" >nul 2>&1
	if %errorlevel% gtr 0 (
		echo.
		echo You Entered Invalid Path
		echo Check Your Clipped Path
		echo Make Sure You Entered A
		echo Valid Path And Press Enter
		pause >nul
		cls && goto :menu
	)
	
:set
		set /a "i=0"
		REM THIS LINE DELETE ALL FILES WITH EXTENSION TXT IN CURRENT FOLDER.
		if exist ".\*.txt" (
			echo Do you wanna delete all text files?
				rem variable resetor
			set "t="
			set /p t="type (y/n): "
				echo. 
				echo You Entered ===^> "!t:~0,1!"
				pause >nul
				if /i "!t:~0,1!" == "y" (
					echo.
					echo You chosed to deleted all text files
					del /a ".\*.txt"
				) else if /i "!t:~0,1!" == "n" (
					echo.
					echo You chose not to delete the text files^^!
					cls && goto :set
					pause >nul
					REM THIS IS HOW WE CAN COMPARE VALUE USING CHAR^(case^) METHODE
				) else if /i "!t:~0,1!" == "~0,1" (
					echo.
					echo No value entered to variable
					echo Enter ^(y/n^) and press enter
					pause >nul
					cls && goto :set
				) else (
					echo.
					echo You entered invalid value^^!
					echo Value entered ---^> !t!
					pause >nul
					cls && goto :set
				)
		)
		REM PROCEDURE ================================================================================
		for /f "tokens=* delims=" %%G in ('dir /b /o "*.srt"') do (
			cls
			echo.
			echo.
			echo.
			set /a i += 1
			
			if !i! equ 1 (
				set "file_name=%%G"
				REM "%PROGRAMFILES%\Winrar\"rar.exe a %%~nG ^^!filename^^!
			)
			
			REM THIS LINE WILL SHOWS CURRENT FILES BEING COMPARED
			echo.
			echo Comparing two files below:
			echo ===========================================================
			echo 1^)---^> %%~G
			echo 2^)---^> !file_name!
			echo ===========================================================
			REM THIS WILL COMPARE THE FILES
			fc "%%G" "!file_name!" 1>nul
			
			rem this line will make comparation if not errorlevel ^=^>1 not if value igual to 1
			if not errorlevel 1 (
				echo %%~nG >"%temp%\clipped.ini"
				if not !i! equ 1 (
					if /i "%%~xG" == ".srt" (
						del "%%G"
					)
				)
				REM THE LINE WILL CREATE A FILES IN TEMP FOLDER CALLED
				REM THAT FILES WILL CONTAIN ALL 
				clip < "%temp%\clipped.ini"
				echo.
				echo Clipped --^> %%~nG
				pause >nul
			)
		)
		
		REM REMARK COMMENTS
		echo.
		echo.
		echo ==============================
		echo Scripts complete successfully
		echo ==============================
		pause >nul
			
			if exist ".\!file_name!" (
				del /a ".\!file_name!"
				del /a "%temp%\clipped.ini"
			)
			
			REM set "checker=^^!^^!file_name:.srt=.rar^^!^^!
			REM set "checker=^^!^^!file_name:%.srt%=.rar^^!^^!
			call set checker=%%file_name:.srt=.rar%%
			if /i exist ".\!checker!" (
				REM ONCE THIS LINE FOUND THAT THERE ARE FILE WITH EXTENSION .RAR
				REM IT WILL DELETE IT
				del ".\!checker!"
			)
			
		REM Rar archive command
		REM rar a Legendas Legendas.txt
		
:continue
		cls
		echo.
		echo.
		set "input="
		echo Do you want to continue at same folder?^^!
		set /p "input=Type (y/n): "
			
			if /i "!input:~0,1!" == "y" (
				cls && goto :set
			) else if /i "!input:~0,1!" == "n" (
				popd
				rd "!location!" >nul 2>&1
				echo.
				echo Thanks for using the scripts
				timeout /nobreak /t 2 >nul 2>&1 && exit /b
				rem this is how to compare a statement
			) else if /i "!input:~0,1!" == "~0,1" (
				echo.
				echo Nothing entered to variable
				echo make sure you entered a value to
				echo variable and press ENTER
				pause >nul && goto :continue
			) else (
				echo.
				echo The Value You Entered Isn't Valid
				echo make sure you entered the valid one
				echo and press enter, don't keep entering the
				echo invalid value please...
				pause
			)
goto :eof