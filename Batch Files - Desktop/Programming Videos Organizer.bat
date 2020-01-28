
REM ALGORITHEM BY: IVANDRO ISMAEL GOMES JAO
@echo off
	title Programming Videos Organizer v3
	cls && pushd %USERPROFILE%\Downloads\ >nul 2>&1
	
	if %errorlevel% neq 0 (
		echo.
		echo The path wasn't found
		echo Check the scripts code and re-run the scripts
		timeout /nobreak /t 4 >nul 2>&1
		exit /b
	)
	
	if exist .\*Programming* (
		move *Programming* "..\Videos\Programming\C++\" >nul
			if not errorlevel 1 (
				echo File move successfully
			)
		popd
	) else (
		echo.
		echo There are no files to be moves.
		echo Make sure you have download the video
		echo file and re-run the scripts,
		echo if there are no videos files the scripts will keep
		echo showing this message...
		msg * Scripts by: @Ivandrofly
		timeout /nobreak /t 4 >nul
		cls && goto :eof
	)
	
	echo.
		echo The scripts completed... 
		echo the scripts is going to be quit in somo seconds
		echo thanks for using it... bye
		timeout /nobreak /t 2 >nul 2>&1
		