
	rem v2.6
	@echo off
	cls
	Title Notepad++
	:menu
	cls
	ECHO.
	ECHO.
	ECHO                             ###################################
	ECHO.                            
	ECHO                                 1)----^> To EXPORT - Backup
	ECHO                                 2)----^> To IMPORT - Update
	ECHO.                            
	ECHO                             ####################################
	ECHO.
		set /p y="Type here and (press ENTER)=> "
		
			if /i "!y:~0,1!" == "1" (
				cls
				goto :label1
			) else if /i "!y:~0,1!" == "2" (
				cls
				goto :label2
			) else if /i "!y:~0,1!" == "" (
				echo.
				echo No value entered
				pause >nul
				cls
				goto :menu
			) else (
				echo.
				echo You entered invalid value^^!
				pause >nul
				goto :menu
			)
	
:label1
	title Export
	set "np="
	cls
	echo.
	echo.
	echo Do you want to import the settings (Backup)^?
	ECHO.
	set /p np="Type here (Y/N)-->"
	
		if /i "!np:~0,1!" == "y" (
			
			if exist "%Appdata%\Notepad++" (
					xcopy /y /s "%HOME%\DataBase\Notepad++\" "%APPDATA%\NOTEPAD++\"
					PAUSE >NUL
					GOTO :EOF
				)
				
			) else if not exist "%Appdata%\Notepad++" (
				echo.
				echo You have not Notepad^+^+ instaled in you computer^^!^^!
				pause >nul
				goto :eof
			)
		
		) else if /i "!np:~0,1!" == "n" (
			ECHO.
			ECHO Your Entered No
			timeout /t 5 >nul
			ECHO.
			GOTO :EOF
		
		) else (
			ECHO.
			echo You Intered Invalid Value
			echo Try Again and enter the correct one
			ECHO.
			timeout /t 5 >nul
			GOTO :menu
		)
		
:label2
	title Backup
	set backup=
	cls
	echo.
	echo.
	ECHO Do you want to export the settings (Update)^?
	echo.
	set /p export="Type Here (y/n)==> "
			
			if /i "!export:~0,1!" == "y" (
				if exist "%Appdata%\Notepad++" (
					pushd "%Appdata%\"
					for /d %%H in ("Notepad++*") do (
						echo.
						echo Folder Copied - %%~nH
						pause >nul
						xcopy /q /y /h /s "%%H" "%home%\DataBase\Notepad++\" >nul 2>&1
					)
					echo.
					echo Backup Complete Successfully
					pause >nul
					popd
					goto :eof
					
				) else (
					echo.
					echo.
					echo You haven't isntaled Notepad^+^+ yet^^!^^!^^!
					pause >nul
					goto :eof
				)
				
			) else if /i "!export:~0,1!" == "n" (
				echo.
				echo You entered "NO"
				pause >nul
				goto :eof
			) else (
				echo.
				echo You entered invalid value^!
				pause >nul
				goto :label2
			)
		
		REM Note
		REM '::' Works "MAY only" if comparation If var == var
		REM If we use '::' to make comparation if exist filename (it'll not works)
		REM Bet option for Remark comment is REM
		
		REM :: PROGRAMS FOLDER WILL CAUSE (The system cannot find the drive specified.)