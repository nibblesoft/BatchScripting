
	REM Subtitle Organizer v6.7
	REM BATCH SCRIPTS BY IVANDRO ISMAEL GOMES JAO
	REM NOTE: Echo Y | RD /S ==^> yes prompt in Batch Scripts
@Echo off && Cls
	Setlocal enabledelayedexpansion
	Title Subtitle Organizer v6.8
	:Menu
	Cls
	REM THIS WILL AUTOMATICLY RESET THE VALUE OF COUNTER
	Set /a "counter=0"
	Popd >Nul 2>&1
	Echo.
	Echo.
	Echo                     .....::By: Ivandro Ismael Gomes Jao::.....
	Echo.
	Echo                          ====== Subtitle Organizer ======
	Echo                   This scritps will help you to keep organized you
	Echo                   subtitles files no matter where they are located
	Echo                     in you driver, they will all be organized.
	Echo                          MAKE SURE YOU FOLLOW ALL RULES
	Echo                   The Algorithm For this scripts were wroten by:
	Echo                                   Ivandro Ismael
	Echo.
	
	REM THIS LINE WILL RESTORE THE DRIVER VARIABLE
	Set "driver="
	Set /p driver="Type Driver Letter: "
		If /i "!driver!" == "" (
			Set /a counter += 1
			Echo.
			REM WE NEED TO SKIP THE PARENTESE BECAUSE IT WILL CAUSE THE PROBLEM WHILE THE SCRIPTS IS DEBUGGING
			Echo No value entered, please enter a value^^! :^(
			Pause >Nul && Cls
			If /i !counter! equ 3 (
				Echo.
				Echo All Attepmts were finished^^!^^!^^!
				Echo The scripts is now going to quit...
				Timeout /t 3 1>Nul
				Exit /b
			)
			Goto :Menu
		)
		
		REM THIS LINE WILL CHECK If THE ENTERED DRIVER LETTER IS ASSIGNED OR Not
		REM ONCE IT ISN'T, IT WILL SEND YOU BACK TO LABEL MENU
	Pushd "!driver!:\" >Nul 2>&1
		If %errorlevel% neq 0 (
			Echo.
			Echo The driver you entered isn't availible 
			Echo make sure you entered the valid one and try again.
			Pause >Nul
			:check
				Echo.
				Echo.
				Echo Do you want to read more about driver letter?^^!
				Set "drive="
				Set /p drive="Type (y/n): "
					If /i "!drive!" == "" (
						Echo.
						Echo Nothing entered...
						Echo enter a value to variable and press: ENTER
						Timeout /t 5 /nobreak >Nul && Cls && Goto :check
					) Else If /i "!drive!" == "y" (
						Echo Prossecing...
						REM THIS LINK HAS NOTHING TO DO WITH DRIVE LETTER
						REM ...
						REM THE START WIL AUTOMATICLY START THE DEFAULT BROWSER
						start http://en.wikipedia.org/wiki/Drive_letter_assignment
						Timeout /t 3 /nobreak >Nul
						Cls && Goto :Menu
					)
			Cls && Goto :Menu
			
		)
		
	Cls
	Echo.
	Echo.
	Echo.
	Echo                               ^<^<OPTION AVAILABLES^>^>
	Echo                      #1) --^> Move Sub Files To "Subs"
	Echo                      #2) --^> Remove SubFiles from Subs-folder
	Echo                      #3) --^> Damaged Files Remover
	Echo.
	Set "op="
	Set /p op="Enter Your Option Here(1-3): "
	
		If /i "!op:~0,1!" == "1" (
			call :Subcreator
			Cls && Goto :Menu
		) Else If /i "!op:~0,1!" == "2" (
			call :Subremover
			Cls && Goto :Menu
		) Else If /i "!op:~0,1!" == "3" (
			call :DAMAGE_SUBTITLES
			Cls && Goto :Menu
		REM THIS LINE WILL CHECK If VARIABLE HAS NONE VALUE
		) Else If /i "!op:~0,1!" == "~0,1" (
			Echo.
			Echo Nothing entered no the variable
			Echo input a value to variable and press enter
			Echo make sure the value you entered is listed above
			Pause >Nul && Cls && Goto :Menu
		) Else (
			Echo.
			Echo You Entered Invalid Option
			Echo Try agin and enter the valid one^^!
			Pause >Nul && Cls && Goto :Menu
			
		)
		
:Subremover
	Title Subtitle Folder Removed
	REM Code will only loop through the folder with start with "Sub" name 
	REM If it doesn't found any folder to loop at it will simple print ("Scripts Completed Successfully^^!")
	For /d /r "%driver%:\" %%G IN ("Sub*") do (
		Pushd "%%G"
		If exist "%%G\*.srt" (
			Set "subfolder=%%~nG"
			If /i "!subfolder:~0,3!" == "Sub" (
				move "%%G\*.srt" "..\" >Nul 2>&1
				Popd
				rd /q "%%G"
				REM I HAVE TO ADD ANOTHE SUBTITLE EXTENSION
				REM If there are *.sub it will keep showing
				Echo Folder Removed - %%~sG
			)
		) Else (
			popd
			REM THSI WILL AUTOMATICLY REMOVE ALL THE DIRECTORIES WITH HAS NO SUBTITLES INSIDE
			Rd "%%~G" /q >nul
			Echo --------------------------------------
			Echo No Subs Found - %%~sG
			Echo --------------------------------------
		)
	)
	
	Echo.
	Echo.
	Echo ===============================
	Echo Scripts Completed Successfully^^!
	Echo ===============================
	Pause >Nul
	Goto :Menu
	
:Subcreator
	Title Subs Folder Creator
	Echo.
	Echo.
	Echo.
	Set /a SubOrgan=0
	REM THIS LINE WILL LOOP THROUGH ALL FILES WITH EXTENSION .SRT
	For /r "%driver%:\" %%G in ("*.srt") do (
		Pushd "%%~dpG"
		Set "name=%%~dpG"
		REM /I HAS TO BE INCLUDED BECAUSE OF CASE SENCETIVE
		If /i Not "!name:~-5,4!" == "Subs" (
			md ".\Subs\"
			move *.srt ".\Subs\" 1>Nul
			Set /a SubOrgan += 1
			Popd
		) Else (
			REM THIS LINE WILL ALWAYS SHOWING ORGANIZED
			REM BECAUSE AFTER 'md Subs' For /r will loopes trought Subs
			Echo Sub-File Organized - %%~sG
			Popd
		)
	)
	Echo.
	Echo.
	Echo                          =================================
	Echo                          Scripts Completed Successfully^^!
	Echo                          Total organized Subtitles - [!SubOrgan!]
	Echo                          =================================
	Pause >Nul
	Goto :Menu
	
:DAMAGE_SUBTITLES
	REM NOTE: I DIDN'T MENTIONED TO DELETE DAMAGED FILES YET
	Title Damaged Subtitles Remover
	Echo.
	Echo =====================================================================
	
	REM THIS IS THE COUNTER For DAMAGED SUBTITLES FILES
	Set /a "Damage=0"
	REM THIS IS THE COUNTER For SUBTITLES FILES NOT DAMAGES
	Set /a "UnDamage=0"
	
	Echo Processing... Do Not close the application^^!^^!^^!
	For /r "%driver%:\" %%G in ("*.srt") do (
		
		Rem This will check if the subtitle file are damaged or not
		type "%%G" | find "-->" >Nul 2>&1
		
		Rem This line call ErrorLevel label which will return a ErrorLevel value
		call :errorlevel
			If !error! gtr 0 (
				REM THIS IS THE COUNTER For DAMAGED SUBTITLES FILES
				Set /a Damage += 1
				
				REM THIS LINE WILL COPY ALL FILES DELETED
				xcopy /a /q "%%G" ".\Found\" >Nul 2>&1
				
				REM I USED COMMA BECAUSE DOT WILL Not EXECUTE WELL IT WILL KEEP SHOWING DOTS WHILE LOOPING
				REM Echo,
				Echo Damaged Subtitle #!Damage! - %%~nG
					If !counter! equ 1 (
						REM EVEN If THERE ARE ALREADY FILE NAMED "DmgSubFiles.TXT" IT WILL RESET DATAS IN FILE
						Echo. >"%~dp0\DmgSubFiles.txt"
						Echo %date% - %time% >>"%~dp0\DmgSubFiles.txt"
						Echo ================================ >>"%~dp0\DmgSubFiles.txt"
						Echo. >>"%~dp0\DmgSubFiles.txt"
					)
					
				Rem This line will keep appending the damaged file name to a TextFile Named DmdSubFiles.txt
				Echo Damaged Sub Name - %%~nG >>"%~dp0\DmgSubFiles.txt"
				
				REM THIS WILL DELETE DAMAGED FILES
				del /a /q "%%G"
			) Else If !error! equ 0 (
				REM THIS IS THE COUNTER For UNDAMAGED SUBTITLES FILES
				Set /a UnDamage+=1
			)
	)
	Echo =====================================================================
	Echo.
	Echo                         =================================
	Echo                                Scripts Completed
	Echo                             Total Damaged Sub-Files [%Damage%]
	Echo                             Total UnDamaged Sub-Files [!UnDamage!]
	Echo                         =================================
	Pause >Nul
	Goto :Menu

Rem This line will check the ErrorLevel Value
:errorlevel
	Set "error=%errorlevel%"
	Goto :eof
	