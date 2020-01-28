	
	rem v2.5
	
@echo off
	CLS
	title Winrar
	setlocal enabledelayedexpansion
	color 07
	:WINRAR_MENU
	SET _rar=
	echo.
	echo.
	echo Do You Want To Add Crack File To Winrar Folder You Can Type (Yes/No).
	set /p crack="Type Here (Y/N)==> "
		
		if /i "!crack:~0,1!" == "y" (
			REM THIS LINE WILL TEST IF THERE ARE WINRAR FORLDER IN YOUR
			REM PROGRAMS FOLDER
			
			if exist "%programfiles%\winrar" (
				xcopy /y "%home%\DataBase\Winrar\rarreg.key" "%PROGRAMFILES%\WINRAR\"
				pause >nul
				goto :eof
				
				REM I could have used only 'ELSE' in intead of 'else if note exist'
			) else if not exist "%programfiles%\winrar" (
				echo.
				echo.
				echo You Have Not Installed Winrar Yet^^!^^!
				echo Do You Wanna Download Winrar ^(y^/n^)
					set /p _rar="Enter you option here ==> "
					
					REM THIS IS COMDICTION FOR DOWNLOAD FILE
					if /i "!_rar!:~0,1" == "y" (
						echo File Downloaded
						start http://www.rarlab.com/rar/wrar420.exe
						pause >nul
						goto :eof
					
					) else if /i "!_rar!:~0,1" == "n" (
						echo.
						echo.
						echo You have entered no.
						pause >nul 2>&1
						CLS
						GOTO :WINRAR_MENU
					
					) else (
						echo You Entered Invalid Value Try Again.
						pause >nul
						cls
						goto :WINRAR_MENU
					)
			
			)
		
		) else if /i "!crack:~0,1!" == "n" (
			echo you entered NO
			PAUSE >NUL
			GOTO :eof
		
		) else (
			echo.
			echo YOUR OPTION ISN'T VALID
			pause >nul
			cls
			goto :WINRAR_MENU
		)
		
		REM Note
		REM '::' Works "MAY only" if comparation If var == var
		REM If we use '::' to make comparation if exist filename (it'll not works)
		REM Bet option for Remark comment is REM
		
		REM :: PROGRAMS FOLDER WILL CAUSE (The system cannot find the drive specified.)