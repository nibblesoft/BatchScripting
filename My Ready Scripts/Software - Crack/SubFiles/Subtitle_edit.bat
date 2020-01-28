
	rem v2.5
@echo off
	cls
	title Subtitle Edit
	:menu
	set x=
	cls
	echo.
	echo.
	echo.
	echo                       ##############################
	echo.                      
	echo                            1)---^> Goto Backup
	echo.                           
	echo                            2)---^> Goto Update
	echo.                      
	echo                       ##############################
	echo.
	echo.
	set /p x="Type Here (1/2)==> "
		
		if /i "!x!" == "1" (
			cls
			goto :label1
			
		) else if /i "!x!" == "2" (
			cls
			goto :label2
			
		) else (
			echo.
			echo.
			echo You Entered Invalid Value
			pause >nul
			cls
			goto :menu
			
		)
	
	rem ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	:label1
	Title BACKUP
	set subtitle=
	echo.
	echo.
	echo.
	echo DO YOU WANT DO CONTINUE^?
	
	REM "'>' WILL WORK BECAUSE SETLOCAL ENABLEDELAYEDEXPANSION IS ON"
	set /p subtitle=""Type Here (Y/N)==> "
		
		REM IF WE WANT TO USE SETLOCAL ENABLEDELAYEDEXPANSION WE MUST USE '""' IN
		REM VARIABLE
		
	if /i "!subtitle:~0,1!" == "y" (
		if exist "%Appdata%\Subtitle Edit\" (
			rd "%appdata%\Subtitle Edit\Dictionary"
			xcopy /s /h /y "%HOME%\DataBase\Subtitle_Edit\*" "%APPDATA%\Subtitle Edit\"
			
			if errorlevel 0 (
			echo.
			echo.
			echo The Command Has Completed Successfully^^!^^!
			pause >nul
			goto :eof
			) else (
				echo.
				echo You get errorlevel
				pause >nul
				cls
				goto :eof
			)
		
		) else (
			echo.
			echo YOU YOU HAVE TO INSTALED SUBTITLE EDIT^^!
			echo.
			echo DO WANT TO INSTALALL SUBTITLED EDIT^?
			set /p sub_down="ENTER A OPITION (Y/N): "
					
				if /i "!sub_down:~0,1!" == "y" (
					start http://code.google.com/p/subtitleedit/downloads/list
			
				) else if /i "!sub_down:~0,1!" == "n" (
					cls
					goto :EOF
					
				) else (
					echo ENTER A AVAILABLE CONDICTION
					pause >nul
					goto :subtitle_edit
				)
		)
		
	) else if /i "!subtitle:~0,1!" == "n" (
		echo.
		echo You entered No
		pause >nul
		cls
		goto :eof
		
	 ) else (
		echo You entered invalid option
		pause >nul
		cls
		goto :eof
		
	)
	
	 REM ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	:label2
	title UPDATE
	set Sub_Backup=
	echo.
	echo.
	echo.           ############################
	echo.
	echo             DO YOU WANT DO CONTINUE^?
	echo.
	echo            ###########################
	echo.
	set /p Sub_Backup="Type Here (Y/N)==> "
		
	if /i "!Sub_Backup:~0,1!" == "y" (
		if exist "%Appdata%\Subtitle Edit" (
			
			pushd "%Appdata%\"
			for /d %%G in ("Subtitle Edit*") do (
				echo.
				echo Folder Copied Successfully - %%~nG
				xcopy /h /s /y /q "%%G" "%home%\DataBase\Subtitle_Edit\" >nul 2>&1
			)
			echo.
			echo Datebase has been Updated Successufuly
			pause >nul
			popd
			goto :eof
		
		) else (
			echo.
			echo YOU YOU HAVE TO INSTALED SUBTITLE EDIT^^!
			pause >nul
			echo.
			echo DO WANT TO INSTALALL SUBTITLED EDIT^?
			set /p download="Type Here (Y/N)==> "
					
				if /i "!download:~0,1!" == "y" (
					start http://code.google.com/p/subtitleedit/downloads/list
			
				) else if /i "!download:~0,1!" == "n" (
					ECHO.
					echo YOU ENTERED NO^^!^^!
					PAUSE >NUL
					cls
					goto :eof
					
				) else (
					echo.
					echo.
					echo ENTER A AVAILABLE CONDICTION
					pause >nul
					CLS
					goto :menu
				)
		)
		
	) else if /i "!Sub_Backup:~0,1!" == "n" (
		echo.
		echo.
		echo YOU ENTERED NO, THE PROGRAM IS GOING TO QUIT
		pause >nul
		goto :eof
		
	 ) else (
		echo.
		echo.
		echo YOU ENTERED INVALID OPTION^^!^^!
		pause >nul
		cls
		goto :menu
	)
		REM Note
		REM '::' Works "MAY only" if comparation If var == var
		REM If we use '::' to make comparation if exist filename (it'll not works)
		REM Bet option for Remark comment is REM
		
		REM :: PROGRAMS FOLDER WILL CAUSE (The system cannot find the drive specified.)