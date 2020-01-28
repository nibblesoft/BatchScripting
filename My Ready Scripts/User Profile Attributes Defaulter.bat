
	REM THE VERSION OF THIS PROGRAMS IS (VER 1.9.3)
	@Echo OFF
	Cls
	REM SETLOCAL ENABLEDALAYEDEXPANSION
	REM SETLOCAL THIS WILL RESULTAT A PROBLEM WITH VARIALES
	REM ------------------------------------------------------
	REM If ERRORLEVEL n statements should be read as If ErrorLevel >= number
	REM i.e.
	REM If ERRORLEVEL 0 will return TRUE when the ErrorLevel is 64
	REM An alternative and often better method of checking ErrorLevel is to use the string syntax along with the %ERRORLEVEL% variable:
:menu
	setlocal enabledelayedexpansion
	Cls
	
	REM VARIABLE DEFAULTER
	FOR %%G IN (M,G,Y,I,L) DO (
		SET %%G=
	)
	
	Title Attributes Defaulter (VER 1.9.3) (C) 2013
	Echo off
	Cls
	Echo.
	Echo                ...................................................
	Echo                            Welcome to Attributes Defaulter
	Echo                               By: Ivandro Ismael
	Echo                  ...............................................
	Echo.
	Echo                   ############################################
	Echo.
	Echo                        01 - Apply Attributes In Contacts
	Echo                        02 - Apply Attributes In Desktop
	Echo                        03 - Apply Attributes In Documents
	Echo                        04 - Apply Attributes In Downloads
	Echo                        05 - Apply Attributes In Favorites 
	Echo                        06 - Apply Attributes In Links
	Echo                        07 - Apply Attributes In Music
	Echo                        08 - Apply Attributes In Pictures
	Echo                        09 - Apply Attributes In Videos
	Echo                        10 - Apply Attributes In Saved Games
	Echo                        11 - Apply Attributes In Searches
	Echo                        12 - Aplly All Folders In %username%
	Echo                        13 - Quit Script
	Echo.
	Echo                   #############################################
	Echo.
	REM INPUT THE VALUE THE VARIABLE
	SET /p m=" Type Your Option Here : "
	
	If /i "!m!" == "1" (
		Goto :CONTACT
	) Else If /i "!m!" == "2" (
		Goto :DESKTOP
	) Else If /i "!m!" == "3" (
		Goto :DOCUMENTS
	) Else If /i "!m!" == "4" (
		Goto :DOWNLOADS
	) Else If /i "!m!" == "5" (
		Goto :FAVORITES
	) Else If /i "!m!" == "6" (
		Goto :LINKS
	) Else If /i "!m!" == "7" (
		Goto :MUSIC
	) Else If /i "!m!" == "8" (
		Goto :PICTURES
	) Else If /i "!m!" == "9" (
		Goto :VIDEOS
	) Else If /i "!m!" == "10" (
		Goto :SAVED_GAMES
		Pause >Nul
	) Else If /i "!m!" == "11" (
		Goto :SEARCH
	) Else If /i "!m!" == "12" (
		Goto :MULTI
	) Else If /i "!m!" == "13" (
		Goto :EXIT
	) Else If /i "!m!" == "" (
		Echo.
		Echo Nothing entered in the variable, make sure
		Echo you entered a numerical value to the variable
		Echo to run the scripts...
		Pause >Nul && Cls && Goto :menu
	) Else (
		Cls && color c
		Echo.
		Echo.
		Echo                =======================================================
		Echo                               ^>^>^>^> ERROR ^<^<^<^<
		Echo                You the value you just entered isn't the valid one
		Echo                make sure you entered the valid option...
		Echo                =======================================================
		Echo.
		Echo.
		Pause 1>Nul && color 07 && Goto :menu
		REM If this statement were called I could simply used the 
		Rem Goto :eof
	)
	
REM command is returning Error [5]:Access is denied.
REM I COULD HAVE USED THE IR STATEMENT INSTEAD OF LABEL...
:CONTACT
	Attrib +r -s -h "%USERPROFILE%\Contacts" /S /D
	call :msg
	MSG * Contats Folder Done^^!^^!
	Cls && Goto :menu

:DESKTOP
	Attrib +r -s -h %USERPROFILE%\Desktop /S /D
	MSG * DESKTOP DONE^^!^^!
	Cls && Goto :menu

:DOCUMENTS
REM THERE IS A ERROR
	For %%G in ("*.txt") do (
		Attrib -h -r /s %USERPROFILE%\Documents\"%%G" || Echo error & Pause
	)
		Attrib +r -s -h "%USERPROFILE%\Documents" /S /D
		MSG * DOCUMENTS DONE^^!^^!
		Cls && Goto :menu

:DOWNLOADS
	Attrib +r -s -h "%USERPROFILE%\Downloads" /S /D
	MSG * DOWNLOADS DONE^^!^^!
	Cls && Goto :menu
	
:FAVORITES
	Attrib +r -s -h "%USERPROFILE%\Favorites" /S /D
	MSG * FAVORITES DONE^^!^^!
	Cls && Goto :menu

:LINKS
	Attrib +r -s -h "%USERPROFILE%\Links" /S /D
	MSG * LINKS DONE^^!^^!
	Cls && Goto :menu
	
:MUSIC
	Attrib +r -s -h "%USERPROFILE%\Music" /S /D
	MSG * DONE^^!^^!
	Cls && Goto :menu

:PICTURES
	Attrib +r -s -h "%USERPROFILE%\Pictures" /S /D
	MSG * PICTURES DONE^^!^^!
	Cls && Goto :menu

:VIDEOS
	Attrib +r -s -h "%USERPROFILE%\Videos" /S /D
	MSG * VIDEOS DONE^^!^^!
	Cls && Goto :menu

	REM If we want to use this(Saved Gamed) label we must use "Saved Games" || Saved_Games
	REM SAVED GAMES
	REM "SAVED GAMES"
:SAVED_GAMES
	REM 10
	Attrib +r -s -h "%USERPROFILE%\Saved Games" /S /D
	MSG * SAVED GAMES DONE^^!^^!
	Cls && Goto :menu

:SEARCH
	Attrib +r -s -h "%USERPROFILE%\Searches" /S /D
	MSG * SEARCH DONE^^!^^!
	Cls && Goto :menu

:MULTI
	Echo.
	Echo.
	Pushd "%USERPROFILE%\"
	REM NOTE THAT THIS WILL ONLY LOOP THROUGH FOLDERS NOT FILES
	Echo ===================================================================
	for /d %%G in ("*") do (
		Attrib +r -s -h /d /s "%%G" || Echo Command Fails && Pause >Nul && Goto :menu & Echo Directory Processed - [%%~tanG]
	)
	Echo ===================================================================
	Echo.
	Echo.
	Echo                       ================================
	Echo                         Command Complete Successfuly
	Echo                       ===============================
	Pause 1>Nul
	Popd && Cls && Goto :menu

:Exit
msg * Bye bye :)^^!
exit /b

REM THIS IS WAS A TEST OF CALL LABEL
:msg
MSG * Done^^!^^!
Pause >Nul
Goto :eof