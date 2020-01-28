
@echo off
	cls
	echo.
	echo.
	goto :label1
	
	echo Enter the file name you want to search and press enter^!
::	set /p Foldername="Type file name here: "
	echo.
	echo.
	echo Enter the drirev letter.
::	set /p driver="Type driver letter: "
		:label1
		pushd %userprofile%
		for /d %%G in (*) do (
			echo We found "%%G"
			pause >nul
		)
		pause >nul
		goto :eof
		
		
		rem /r to loop in all subfolder
		rem /d only  searh in currety directory, that is why we ad /r to allow loop in all subfoders
		
		:label2
		rem note: /d "/r most be last"
		for /d /r "%userprofile%" %%G in (*) do (
			echo FOUND %%~nG
			
		)
		pause >nul
		goto :eof