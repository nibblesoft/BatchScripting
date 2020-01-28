
:: Hidden Files Restores v1.5.1
:: THIS SCRIPTS WERE WROTE BY IVANDRO ISMAEL GOMES JAO
@Echo off && Cls
	setlocal enabledelayedexpansion
:Menu
	Title Hidden Files ^& Folder Restorer (v1.5.1) by: Ivandro Ismael
	color a && Cls
	Echo.
	Echo.
	Echo               ======================================================
	Echo                     Enter the driver letter you want restore
	Echo                Note: Make sure your don't entered the system driver
	Echo                       Which is the mostly the (C:) letter
	Echo              ========================================================
	Echo                                                    By: Ivandro Ismael
	Echo.
	
	Rem THIS WILL RESTORE ALL THE DATA STORED IN FOLLOWING VARIABLES
	Set "dvr="
	Set "sure="
	Set /p dvr="Type Driver's Letter: "
		
		If /i "!dvr!" == "c" (
			Echo.
			Echo Your entered the system's driver are your sure about it
			Echo If you don't know too much about it please to select is
			Echo because it will restore you system files that can make your
			Echo computer to lose system file...
			
				Set /p sure="Type (y/n): "
					If /i "!sure!" == "n" (
						Echo.
						Cls
						Goto :Menu
					) Else If /i "!sure!" == "y" (
						Echo.
						Echo You said yes
						Timeout /t 5
					) Else If /i "!sure!" == "" (
						Echo.
						Echo Nothing entered a value to variable
						Pause >nul
						Cls && Goto :Menu
					) Else (
						Echo.
						Echo The value you have entered isn't valid one^^!
						Echo please enter the valid option and press enter.
						Pause >nul
						Cls && Goto :Menu
					)
		) Else If /i "!dvr!" == "d" (
			Echo.
			Echo Your entered the driver D: are you sure about it
			Echo because it's your backup driver?
			Set /p sure="type (y/n): "
				If /i "!sure!" == "y" (
					Echo.
					Echo You just entered yes as your response...
					Timeout /t 5
				) Else If /i "!sure!" == "n" (
					Echo.
					Echo Your entered the value NO
					Pause >nul
					Cls && Goto :Menu
				) Else If /i "!!" == "" (
					Echo.
					Echo Nothing entered to the variable
					Echo Give a value to varible and press enter
					Pause >nul
					Cls && Goto :Menu
				) Else (
					Echo.
					Echo The value you just entered ins't valid one
					Echo Re-Run the Scripts and enter the vaild option...
					Pause >nul
					Cls  && Goto :Menu
				)
		) Else If /i "!dvr!" == "" (
			Echo.
			Echo Nothing entered in variable
			Echo Enter a valid driver letter which is already assigned
			Echo in your system... If you don't know how to execute it
			Echo please contact the scripts developer For help
			Echo ==========================================
			Echo Email: ivandrofly@gmail.com
			Echo ==========================================
			Pause >nul && Cls && Goto :Menu
		)		
	Echo.
	
	:: THIS LINE OF THE CODE WILL CHECK If THE DRIVER YOUR ENTERED IS ASSIGNED IN YOUR COMPUTER
	Pushd "!dvr!:\" >nul 2>&1
		If %ERRORLEVEL% neq 0 (
			Set /a _count+=1
			Echo.
			Echo The driver your just entered isn't assigned ^| Valid
			Echo make sure you entered the valid drive letter and try again
			Echo The Counter is now !_count!
			
			
			If !_count! equ 3 (
				Cls && Echo.
				Echo The scripts in now going to exit....
				Echo For more help try contant the script administrator
				Echo ==============================================
				Echo ^< Email: ivandrofly@gmail.com ^>
				Echo ^< Email #2: ivandrofly@outlook.com ^>
				Echo ^< Twitter: @ivandrofly ^>
				Echo ^< Facebook: http://www.facebook.com/ivandrofly ^>
				Echo ==============================================
				Timeout /t 5 /nobreak >nul && exit
			)
			
			Pause >nul && Cls && Goto :Menu
		)
		
	Echo ==========================================
	:Me_Options
	Echo.
	Echo ===========================================================================
	Echo           Chose the type of restore you want:
	Echo     1- System Files : This will restore the system files and hidden files
	Echo     2- Hidden Files : This will restore only the hidden file there is...
	Echo ===========================================================================
	Echo.
	Echo.
	Rem THIS WILL RESET THE VALUE OF TYPE TO NUL EVERYTIME YOU ENTERED THE INVALID VALUE IT WILL BE RESETED
	Set "type="
	Set /p type="Type what kinda restore do you want: "
		If /i "!type!" == "" (Echo Nothing entered in variable. && Pause >nul && Cls && Goto :Me_Options)
		If /i "!type!" == "2" (Cls && Goto :Hidden_Files_Restorer)
		If /i "!type!" == "1" (Cls && Goto :System_Files_Restorer) Else (
			Echo The value you entered isn't the valid one.
			Pause >nul && Cls && Goto :Me_Options
		)
		
:Hidden_Files_Restorer
	title Hidden Files Restorer
	Echo.
	Echo.
	Rem This line will restore the following variables below
	Set /a "skip=0"
	Set /a "rest=0"
	del /q *.lnk >nul
	Rem "DELIMS= " NOT ADDED ^(Not Needed^)
	Rem I'LL ADD RECYCLE BIN SKIP
	Echo ==========================================
	For /f "tokens=*" %%G in ('dir /a /o /s /b') Do (
		Rem %%~NXG mean name extension and argument
		If /i "%%~nxG" == "autorun.inf" (
			Echo -----------------------------------
			Echo Skipped File --^> %%~sG
			Echo -----------------------------------
			Set /a skip += 1
		) Else If /i "%%~nxG" == "driver.ico" (
			Echo -----------------------------------
			Echo Skipped File --^> %%~sG
			Echo -----------------------------------
			Set /a skip += 1
		) Else (
			Rem THE /D SWITCH IS ONLY VALID WITH THE /S SWITCH.
			Rem THIS LINE WILL ONLY RESTORE FILES WHICH ARE ATTRIBUTED HIDDEN ^!= SYSTEM
			For /f "usebackq" %%I in (`attrib -h -r "%%G"`) Do (
				REM NOTE THAT THIS LINE WILL ONLY BE RAN WHEN  THE SCRIPT FIND A SYSTEM FILE	
				REM NOTE THAT THERE ARE A LITTLE BUGS IN HERE THE SCRIPTS HAVE SOME PROBLEMS WHILE RUNNING
				If /i "%%~I" == "Not" (
					Echo.
					Echo You are trying to restore the system files
					Echo to restore the system files enter the system option...
					timeout /t 5 /nobreak >nul
					REM Goto :Menu
					REM Timeout /nobreak /t 5 1>nul
				)	
			)
			Echo Processed --^> %%~sG
			Set /a rest += 1
		)
	)
	Popd
	Echo ========================================== 
	Echo.
	Echo.
	Echo                             Command Completed Successfully
	Echo.
	Echo                                         Statistic
	Echo                          ======================================
	Echo                            Total Skipped Files   ---^> [!skip!]
	Echo                            Total Restored Files  ---^> [!rest!]
	Echo                          ======================================
	Echo Note: The skipped files are the "autorun.inf" and the "driver.ico"
	Pause >nul && Cls && Goto :submenu
	
	
:System_Files_Restorer
	title System Files ^& Hidden Files Restorer
	Echo.
	Echo.
	Rem This line will restore the following variables below
	Set /a "skip=0"
	Set /a "rest=0"
	Rem "DELIMS= " NOT ADDED ^(Not Needed^)
	Rem I'LL ADD RECYCLE BIN SKIP
	del *.lnk >nul
	For /f "tokens=*" %%G in ('dir /a /o /s /b') do (
		If /i "%%~nxG" == "autorun.inf" (
			Echo Skipped  --^> %%~sG
			Set /a skip += 1
			REM ACTUALLY I STOP USING THE ICON NAME AS DRIVER.ICO
		) Else If /i "%%~nxG" == "Driver.ico" (
			Echo Skipped --^> %%~sG
			Set /a skip += 1
		) Else (
		Rem The /D switch is only valid with the /S switch.
		Rem I add to restore only file without system attribute
			Attrib -h -s -r "%%G" >nul
			Echo Processed --^> %%~sG
			Set  /a rest += 1
		)
	)
	Popd
	Echo ==========================================
	Echo.
	Echo.
	Echo                             Command Completed Successfully
	Echo.
	Echo                                         Statistic
	Echo                          ======================================
	Echo                            Total Skipped Files   ---^> [!skip!]
	Echo                            Total Files Precessed  ---^> [!rest!]
	Echo                          ======================================
	Echo                                              by: Ivandro Ismael
	Pause >nul && Cls && Goto :submenu
		
:submenu
	Echo.
	Echo.
	Rem THIS LINE WILL RESTORE THE VARIABLE 'X' TO IS DEFAULT VALUE
	Set "x="
	Echo Do You Want RE-RUN The Scripts?
	Set /p "x=Type (y/n): "
	
		If /i "!x:~0,1!" == "y" (
			Cls && Set /a g=0 && Goto :Menu
		) Else If /i "!x:~0,1!" == "n" (
			Echo.
			Echo.
			Echo Thank you For ussing the Scripts^^!^^!
			Timeout /nobreak /t 3 >nul
			exit /b
			REM THIS IS HOW TO COMPARE THE EMPTY VARIABLE With SUBSTRING
		) Else If /i "!x:~0,1!" == "~0,1" (
			Set /a g+=1
			Echo.
			Echo.
			Echo Nothing Entered Try Again^^!^^!^^!
			Echo make sure you entere a option and try again
			Echo If you keep getting this same eror the scripts is going to
			Echo quit automaticly....
			
			If !g! equ 3 (
				Echo.
				Echo.
				Echo All Attemps are finished now the scripts is going to
				Echo quite automaticly... thanks For running the script^^!
				Rem THE Exit /b :WILL ONLY STOP RUNNING THE BATCH SCRIPT, If the scripts were called be MSDos it
				Rem WILL KEEP RUNNING...
				Timeout /t 5 /nobrak 1>nul && Cls && exit /b 
			)
			REM THIS LINE WILL PREVENT THE TIMER TO BE SHOWN
			Timeout /nobreak /t 3 >nul
			Cls && Goto :submenu
		) Else (
			Echo.
			Echo.
			Echo The value you just entered isn't defined^^!^^!
			Echo Make sure you entered the valid value and try again
			echo If you keep getting this messeage then contact you adim
			echo ========================================
			echo Email: ivandrofly@hotmail.com
			echo Or you can follow me on Twitter by @ivandrofly
			echo ========================================
			Echo ---^> [!x!]
			Pause >nul && Cls && Goto :submenu
		)
		