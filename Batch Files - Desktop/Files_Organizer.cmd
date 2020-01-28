
@echo off
	cls
	setlocal enabledelayedexpansion
	title Files organizer
	echo.
	echo.
	echo This is files organizer by @Ivandrofly
	echo This Scripts will organizer all your deranged files
	echo Note: Just type the letter (':' is not neccessary)
	pause >nul
:Text_Files
	pushd "%USERPROFILE%\Downloads\"
	REM Text Files
	REM Note: if we used for with switch "/parametres" it will display only file name instead of driver+path+filename+extension
	for %%G in ("*.doc","*.docx","*.txt","*.wpd","*.wps") do (
		if not exist ".\DocFiles\" (
			md ".\DocFiles\"
			move "%%G" ".\DocFiles\"
		) else (
			move "%%G" ".\DocFiles\"
		)
	)
	popd
	echo All Text Files Were Organized
	echo The Scripts has completes successfully.
	pause >nul
	
:Executable_Files
	REM Executable Files
	pushd "%USERPROFILE%\Downloads\"
	for %%G in ("*.apk","*.app","*.bat","*.cgi","*.com","*.exe","*.gadget","*.jar","*.pif","*.vb","*.wsf") do (
		if exist ".\Executable Files\" (
			move /-y "%%G" ".\Executable Files\"
		) else (
			md ".\Executable Files"
			move /-y "%%G" ".\Executable Files\"
			echo Folder Created and file "%%~sG" moved
			pause >nul
		)
	)
	popd All Executables Files Were Organized
	echo Scripts has completed successfully.
	pause >nul