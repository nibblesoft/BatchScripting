	
	REM THIS COMMAND WILL COMFIRM WHILE EXECUTION
	REM Echo y | rd /s "folder name"
	
	REM Note: If Command Extensions are enabled DEL and ERASE change as follows:
	REM The display semantics of the ^/S switch are reversed In that it
	REM shows you only the files that are deleted, not the ones it could not find.
	
	REM CLEANER BY IVANDROFLY (v5.5)
	REM YOU MUST RUN IT AS ADMINISTRATOR
	REM FIND OUT MORE ABOUT ESCAPE CHAR In: http://tiny.cc/5c7rrw
	@Echo off
	Cls
	setlocal enabledelayedexpansion
	Title Batch Cleaner v5.6
	net session >nul 2>&1
	Echo.
	Echo.
	Echo Your Current Errorlevel Is ---^> [%errorlevel%]
		REM we cam verify For errorlevel with percent symbol If itsn't In For parametres
		If %errorlevel% equ 0 (
			Echo.
			Echo.
			color 0a
			Echo                    =======================================
			Echo                        Checking Admin Privileges past
			Echo                           Press Any Key To Comtinue
			Echo                    =======================================
			Timeout /nobreak /t 2 >nul
			Cls
		) Else (
			Echo.                   
			Echo.                   
			color 0c                
			Echo                    =======================================
			Echo                        Checking Admin Privileges Fails
			Echo                     Close the Scripts and Re-Run as Admin
			Echo                    =======================================
			Echo.
			Timeout /t 2 /nobreak >nul
			exit /b
			REM Goto :eof
			REM EXIT ^/B WILL QUIT ONLY THE SCRIPT NOT THE CMD.EXE
		)

:MENU
	Cls
	setlocal enabledelayedexpansion
	Title Batch Cleaner
	color 1f
	Echo.
	Echo.
	Echo.
	Echo.
	Echo.
	Echo.
	Echo              	     .........::: Ivandro Ismael :::.......
	Echo               	    §=====================================§
	Echo               	    §      0) - Exit                      §
	Echo               	    §      1) - Prefetch                  §
	Echo               	    §      2) - Appdata Temp              §
	Echo               	    §      3) - Windir Temp               §
	Echo               	    §      4) - Ccleaner                  §
	Echo               	    §      5) - Defraggler                §
	Echo               	    §      6) - Leftover Folder           §
	Echo               	    §=====================================§
	Echo.

	REM THIS SCRIPT WILL RESTORE ALL VARIABLES
	For %%g In (c,y,b,x) do (
		Set "%%g="
	)
	Set /p c="Type one option (and press ENTER) ==> "
	
	If /i "!c!" == "0" (
	:conf
		Echo You chose to quite the scripts
		Echo Are you sure about it?
		REM USER INPUT
		Set /p x="Enter (y/n): "
			
			If /i "!x!" == "y" (
				Echo.
				Echo Thanks For using the scripts
				Echo the scripts will stop running In 2 seconds
				Timeout /nobreak /t 2 >nul
				exit /b
			) Else If /i "!x!" == "n" (
				Echo.
				Echo The scripts will rerun In 2 seconds
				Timeout /t 2 /nobreak >nul
				Cls && Goto :menu
			) Else If /i "!x!" == "" (
				Echo.
				Echo Nothing entered to variable
				Echo make sure you input a value to
				Echo variable and press enter
				Pause >nul
				Cls && Goto :conf
			)
			
	) Else If /i "!c!" == "1" (
		Goto :prefetch
	REM call %~dp0\Family.bat
	) Else If /i "!c!" == "2" (
		Goto :Appdata
		
	) Else If /i "!c!" == "3" (
	Goto :windir
	
	) Else If "!c!" == "4" (
		Goto :CCLEANER
		
	) Else If /i "!c!" == "5" (
		Goto :defrag
	
	) Else If /i "!c!" == "6" (
		Goto :junk_label
	) Else If /i "!c!" == "" (
		Echo.
		Echo Nothing entered
		Echo try again and input a value to variable
		Pause >nul
		Cls && Goto :conf
	) Else (
		Cls
		color 4f
		Echo.
		Echo.
		Echo.
		Echo.
		Echo                    ######## ########  ########   #######  ######## 
		Echo                    ##       ##     ## ##     ## ##     ## ##     ##
		Echo                    ##       ##     ## ##     ## ##     ## ##     ##
		Echo                    ######   ########  ########  ##     ## ########
		Echo                    ##       ##   ##   ##   ##   ##     ## ##   ##
		Echo                    ##       ##    ##  ##    ##  ##     ## ##    ##
		Echo                    ######## ##     ## ##     ##  #######  ##     ##
		Echo.
		Pause >nul
		Goto :MENU
	)
	
	:: THIS FOLDER NEEDS TO TAKEOWN
:prefetch
	Title Prefetch
	Set /a "filesize=0"
	Echo.
	Echo.
	Echo ================================================================
	For /R "%WINDIR%\PREFETCH\" %%P In (*) do (
		DEL /F /Q "%%P"
		Echo Deleted File - %%~sP files size == %%~zP
		rem this line will add 
		Set /a filesize+=%%~zP
	)
	Echo.
	Echo =======================================
	Echo  All files were deleted successfully^^!
	Echo =======================================
		Set /a FileSizeMB=!filesize! / 1024
		Echo Total File Deleted Size = !FileSizeMB! KB
		REM THIS LINE NEED TO BE IMPORVED
		REM If !filesize! lss 1024 (
			REM Echo Total File Deleted Size = !filesize! Bytes
		REM ) Else If !filesize! geq 1024 (
			REM Echo Total Files Deleted Size =  !filesize! Bytes
		REM )
		
	Pause >nul
	Echo.
	Echo.
	Pushd "%WINDIR%\Prefetch\"
	For /D %%A In ("*") DO (
		REM ^%^~N ^=^> FILENAME
		REM ^%^~X ^=^> EXTENSION
		REM NEVER USE '::' For REMARK COMMENT INSIDE For COMMAND BECAUSE IT WILL BE EXECUTED AS DRIVER QUOTATION
		Echo Removed Directory - %%~sA
		RD /s /q "%%A"
	)
	Echo ================================================================
	Echo.
	Echo.
	Echo ==================================
	Echo All folder removed successfully^^!
	Echo ==================================
	Echo.
	Pause >nul
	Goto :MENU
:Appdata
	Title Temporary Files In Appdata
	Echo.
	Echo.
	REM For FILES
	For /r %temp% %%A In (*) do (
		REM I USED Echo, BECAUSE Echo. WILL SHOW DOTS WHILE EXECUTING SCRIPTS
		REM Echo,
		del /q /f "%%A"
		Echo Deleted File - %%~sA
	)
	Echo.
	Echo All Files Were Removed Successfuly
	
	REM ===================================================	
	REM For DIRECTORIES
	Pushd %temp%
	
	For /d %%H In ("*") DO (
		Echo.
			rem || will fails In this case
		rd /s /q "%%H" || Echo There are not file to be deleted^!
		Pause >nul
		Echo Directory removed - %%~sH
	)
	Echo.
	Echo ======================================
	Echo Found Directories removed Successfuly^^!^^!
	Echo ======================================
	Pause >NUL
	Goto MENU
		
	
:windir
	Title Windir Cleaner
	Echo.
	Echo.
	Title Windir
	REM For TEMP FILES
	For /r "%Windir%\temp\" %%G In ("*") do (
		del /a /f /q "%%G" 2>nul
		Echo Temp Files Removed - "%%~sG"
	)
	Echo.
	Echo Files Removed Successfufly
	Pause >nul
	Cls
	
	Echo.
	Echo.
	REM For TEMP FOLDER
	Pushd "%windir%\temp\"
	For /d %%H In ("*") do (
		rd /q "%%H" 2>nul
		Echo Dir Removed - %%~sH
	)
	Echo.
	Echo.
	Echo ======================================
	Echo Directories Were Removed Successfuly^^!^^!
	Echo ======================================
	Pause >nul
	Cls
	
	Echo.
	Echo.
	REM For BACKUP FILES
	For /R "%WINDIR%\LOGS\" %%G In ("*") DO (
		del /a /f /q "%%G"
		Echo Removed Log File - %%~sG
	)
	Echo.
	Echo.
	Echo ======================================
	Echo Logs Files Were Removed Successfuly^^!^^!
	Echo ======================================
	Pause >NUL
	Goto :MENU
	
:ccleaner
	Title Ccleaner
	Echo.
	Echo.
	Title Ccleaner
	If exist "%PROGRAMFILES%\Ccleaner\" (
		Pushd "%PROGRAMFILES%\CCLEANER\"
		Ccleaner.exe /auto >nul 2>&1
		Echo.
		Echo ===================================
		Echo Command Completed Successfully^^!^^!
		Echo ===================================
		Echo.
		Pause >nul
		Goto MENU
	REM I COULD HAVE USED JUST Else	
	) Else If NOT exist "%ProgramFiles%\Ccleaner\" (
		Echo.
		Echo You Have Not Ccleaner Installed In Your Computer PC
		Echo You Can Download It In http://www.ccleaner.com
		Echo You Wanna Download It Now?
			Set "Ccleaner="
			Set /p "Ccleaner=Enter (y/n): "
				
				If /i "!Ccleaner:~0,1!" == "y" (
					start http://www.piriform.com/ccleaner//download/standard
				) Else If /i "!Cleaner:~0,1!" == "n" (
					Echo You Entered No As Your Option
					Echo Thanks For Running The Scripts
					Pause
				)
		popd 
		Goto :MENU
	)
	REM '||' IS USE
	
:defrag
	Title Disk Defraggler (Win32)
	Echo.
	Echo.
	Echo.
	Echo                     ENTER THE DRIVER LETTER AND PRESS ENTER
	Echo                         EXAMPLE: (C)-(D)-(E)-(F)-(G)
	Echo                      YOU CAN TYPE LETTER BETWEEN (A^~Z)
	Echo.
	Echo Note: don't entre colon, because itsn't neccessary (:)
	Echo If you entered colon your may get some errors
	Echo.
	Set "driver_letter="
	Set /P "driver_letter=Type The Driver Letter Here:==> "
		
		REM THIS LIVE WILL CHECK If THE INPUT IS EMPTY / NOT
		If /i "!driver_letter!" == "" (
			Echo.
			Echo Nothing entered to variable
			Echo input a value to variable and press [ENTER]
			Echo.
			Pause >nul
			Cls && Goto :defrag
		)
		
		Pushd "!driver_letter!" >nul
		
		If %errorlevel% gtr 0 (
			Echo.
			Echo You entered invalid driver letter 
			Echo make sure the driver you entered is
			Echo assigned In system...
			Pause >nul
			popd
			Cls && Goto :defrag
		)
		
		REM THIS LINE WILL QUIT THE DRIVER CHECK
		popd
		
		defrag /o /u /v !driver_letter!:
			If %errorlevel% gtr 0 (
				Echo.
				Echo The defrag wasn't completed successfully.. :(^^!
				Echo make sure you follow the defrag rules 
				Pause >nul
				Cls && Goto :defrag
			) Else (
				Echo.
				Echo ===============================
				Echo Command Completed Successfully
				Echo ===============================
				Pause >nul
				Cls
				Goto :MENU
			)
		
:junk_label
	Title Junk Cleaner
	Echo.
	Echo.
		rem this line i have to Set variable count to a value
		REM If %count% gtr 0 (
			REM Echo.
			REM Echo Your don't need to enter the colon In driver
			REM Echo ---^> : ^<---
		REM )
	REM VARIABLE RESTORER
	Echo Enter the software name that you want to delete and press enter
	Echo.
	Set "apps_name="
	Set /p "apps_name=Type Software name==> "
	Cls
	Echo.
	Echo.
	Echo Enter the driver you want to search For - [!apps_name!]
	REM VARIABLE RESTORER
	Set "driver_name="
	Set /p driver_name="Type the driver letter ==> "
	Echo.
	
	Pushd "!driver_name!:\"
		rem this line will check If driver you have entered is assigned to a letter or not
		If not %errorlevel% equ 0 (
			Echo.
			Echo Driver letter your just entered isn't assigned,
			Echo try again and enter the valid driver letter.
			Pause >nul
			Cls
			Goto :junk_label
			Set /a count += 1
		)
		
	REM ^^!VARIABLE_NAME^^! Will not work
	For /d /r "%driver_name%:\" %%S In ("*!apps_name!*") do (
		REM (I USED Echo, comma ',' BECAUSE "Echo." dot '.' WILL SHOW A DOT '.' WHILE EXECUTING THE LOOPER SCRIPTS)
		Echo,
		
		REM THIS WILL REMOVE THE FOLDER NAME
		Echo Found Folder - %%~sS
		rd /s "%%S"
		REM THI WILL REMOVE THE PATH
		rd /s "%%~dpS"
		
		REM Echo Do you want to remove the father dir from %%~sS^?
			REM Set "father_dir="
			REM Set /p father_dir="Type option here: "
	)
	Echo.
	Echo ================================
	Echo Cleanning Complete Susseccfully^^!
	Echo ================================
	popd
	Pause >nul
	Goto :MENU
	
	Rem This end of lines willn't works, i just wrote it
	Goto :eof
	
	REM NOTES:
	Echo y| command = will confirm yes while executing a scriptss
	
	Junk Folders
	this directory contien update files from windows update
	"%windir%\SoftwareDistribution\DataStore\"
	SYSTEM INFO
	systeminfo
	msinfo32