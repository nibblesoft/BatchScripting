	
	Rem this scripts were created by Ivandro Ismael Gomes Jao / @ivandrofly
	REM Scritp v5.2
@echo off
	cls
	setlocal enabledelayedexpansion
:menu
	cls
	title Driver Icon Manager v5.2
	
	REM DISASSING VAR DOWN
		for %%G in (X,Y,G,P,R,N) DO (
			set "%%G="
		)
		
	color 17
	cls
	echo.
	echo.
	echo.
	echo                                By: Ivandro Ismael
	echo                          ===============================
	echo                              1)- Apply Attributes
	echo                              2)- Clear Attributes
	echo                              3)- Delete Files
	echo                              4)- Create Autorun File
	echo                              5)- Quit The Scripts
	echo                          ===============================
	echo.
	set /P N="Type here driver letter ==> "
		
		if /i "!N:~-1,1!" == "1" (
			cls
			CALL :set
			goto :menu
		) else if /i "!N:~-1,1!" == "2" (
			cls
			CALl :CLEAR
			goto :menu
		) else if /i "!N:~-1,1!" == "3" (
			cls
			CALL :DEL
			goto :menu
		) else if /i "!N:~-1,1!" == "4" (
			cls
			call :ICON_CREATOR
			goto :menu
		) else if /i "!N:~-1,1!" == "5" (
			echo quitting the scripts
			exit /b
		) else if /i "!N:~-1,1!" == "~-1,1" (
			echo.
			echo Nothing entered, please enter a value and press 
			echo enter to... make sure the value you entered is
			echo valid one.
			pause >nul
			cls && goto :menu
		) else (
			cls
			rem color 0c = black
			color 0c
			echo.
			echo.
			echo                        ======================================
			echo                          Error ^<^<The Value Isn't Deffined^>^>
			echo                        ======================================
			pause >NUL
			goto :menu
		)
	
	REM THIS IS LABEL CLEAR
:CLEAR
	title Clear Attributes Applyed
	echo.
	echo.
	echo                         ================================
	echo                                Clear Attributes
	echo                         ================================
	echo.
	set "EXT=.inf,.ico"
	echo Enter The Driver
	echo Letter And Press Enter.
	echo.
	set /P X="Enter driver's letter ==> "
		
		for %%X in (!EXT!) DO (
			REM If the command fails then if will run = There Are No Files Named...
			attrib -h -r -s -a "%X%:\*%%X" || echo There Are No Files Named - %%~nX
		)
		
	echo.
	echo Command Completed Successfully
	timeout /nobreak /t 5 >nul 2>&1
	cls && goto :eof

	REM THIS IS LABEL set
:set
	title Apply Attrib
	echo.
	echo.
	echo                         ================================
	echo                                   Apply Attriutes
	echo                         ================================
	echo.
	echo Enter The Driver
	echo Letter And Press Enter.
	echo.
	set /P X="Type dirver letter ==> "
	
	REM THIS LINE WILL RENAME ALL FINE *.inf *.ico
	ren "%X%:\.\*.ico" "Driver.ico" >nul 2>&1
	ren "%X%:\.\*.ind" "Autorun.inf" >nul 2>&1
	
	REM THIS LINE WILL APPLY ATTRIBUTES for FOLLOW EXTENTION
	for %%X in (.ico,.inf) DO (
		attrib +h +s +a +r "%X%:\*%%X" >nul
	)
	
goto :eof
	
:DEL
	title Delete Autorun File ^& Icon
	echo.
	echo.
	set /p ".=Text before colored text " <nul
	set /p ".=Text before colored text " <nul
	set /p ".=IVANDRO" <nul >.\"Deleted Files"
	rem  /v means doesn't match correctly
	findstr /v /a:1c /c:"^%" /s "Deleted Files"
	echo.
	echo                         ================================
	echo                                  Delete Files
	echo                         ================================
	echo.
	echo Enter The Driver
	echo Letter And Press Enter.
	echo.
	set /P X="Type dirver letter ==> "
		
	if EXIST "%X%:\*.inf" (
		DEL /A /F "%X%:\*.inf"
		echo File Deleted - ^*.inf
		PAUSE >NUL
rem this line has no fault		
:ICO
		if exist "%X%:\*.ico" (
			echo.
			DEL /A /F "%X%:\*.ico"
			echo File Deleted ^*.ico
			PAUSE >NUL
			goto :eof
		) else (
			echo.
			echo File ^(^*.ico^) was'nt found
			pause >nul
			cls
			goto :eof
		)
	) else (
		echo.
		echo File ^(^*.inf^) Wasn't Found
		PAUSE >NUL
		cls && goto :ICO
	)
	
:ICON_CREATOR
	title Icon Creator
	echo.
	echo.
	echo Enter the following instructions
	echo you can enter any name you want to your driver 
	echo (include chapital\low chapters)
	echo.
	REM this shall set the value 'one' to variable label
	set label=1
	REM THIS LINE WILL RESTORE THE VARIABLES SELECTED TO NUL VALUE
	REM Note: we can use the apostrof in statement below
		for %%I in (label,icon,driver) do (
			set "%%I="
		)
	REM THIS LINE WILL DEMAND FOR INPUT VALUE TO VARIABLES
	set /p label="Type label: "
	set /p icon="Type ICON <<Country name>>: "
	set /p driver="Type driver letter: "
	
	pushd "!driver!:\" >nul 2>&1
	if not %errorlevel% equ 0 (
		echo.
		echo Invalid driver entered
		pause >nul
		cls
		goto :ICON_CREATOR
	)
		if exist ".\driver.ico" (
			del /a /f ".\driver.ico"
			if not errorlevel 1 (
				echo.
				echo Icon Files Deleted Successfully
				if exist ".\autorun.inf" (
					del /a /f ".\autorun.inf"
					echo Inf File Deleted Successfully
				)
			)
		)
	
	REM for /f "tokens=* delmis= " %%G in ^('dir /o /b *!icon!*'^) do ^(^)
	rem this line will create autorun file
	xcopy /h /q /-y "%USERPROFILE%\Pictures\Icons Files\Flags Icons\*!icon!*.ico" "!driver!:\"
			
			REM ERRORLEVEL CHECKER
			if %errorlevel% neq 0 (
				echo.
				echo.
				echo Invalid Icon Name Entered
				echo Again And Enter The Valid Icon Name
				pause >nul
				cls
				goto :ICON_CREATOR
			)
			
	REM THIS LINE WILL CREATE THE AUTORUN FILE	
	ren "%driver%:\*.ico" "!icon!.ico"
	echo ; Scripts Created By @Ivandrofy >"!driver!:.\autorun.inf" && echo. >>"!driver!:.\autorun.inf"
	echo [autorun] >>"!driver!:.\autorun.inf" && echo label="!label!" >>"!driver!:.\autorun.inf" && echo icon=".\!icon!.ico" >>"!driver!:.\autorun.inf" && echo. >>!driver!:.\autorun.inf"
	REM IN CONTENT LABEL I USED MULTI-LINES
	echo [content] >>"!driver!:.\autorun.inf"
	echo musicfiles=false >>"!driver!:.\autorun.inf"
	echo videofiles=false >>"!driver!:.\autorun.inf"
	echo picturefiles=false >>"!driver!:.\autorun.inf"
	echo.
	echo ==============================
	echo Scripts Completed Successfully
	echo ==============================
	pause >nul
goto :eof