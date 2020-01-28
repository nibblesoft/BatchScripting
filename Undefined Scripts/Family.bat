
REM by Ivandro Ismael Gomes Jao
REM (y: age)
REM (x: name)
REM (i: profession; iy: programm; )
REM (y: age)
REM (f: father; m: mather;)
REM (nb: ; nb1: ; nb2: ;)
REM (y: age)
REM (y: age)
REM (y: age)
REM (y: age)

:menu
	@echo off
	cls
:name
		
		echo What's your name?
		set /p x=" Type here: "
		cls
		
:age
		
		echo How old are you?
		echo If you don't want tell your age its ok
		echo just type ^(n^)
		set /p y=" Type here: "
		cls
			if "%y%" == "n" (
				goto profession
			)
	
:profession
		
		cls
		echo Do you have a job ^(y/n^)?
		set /p i=" Type here: "
		if "%i%" == "y" (
			cls
			echo What do you do?
			set /p iy="Type here: "
		) else if "%i%" == "n" (
			cls
			echo It's ok :^), you will find one!
			pause >nul
		) else (
			cls
			echo Enter valid answer!
			pause 1>nul
			goto profession
		)
	
:family
		cls
		echo What's is you father's name?
		set /p f="Type here: "
		cls
		echo Whta's your mather's name?
		set /p m="Type here: "
		cls
		
:brothers
		cls
		echo How many brothers do you have?
		set /p nb="type here: "
		cls
	if "%nb%" == "1" (
		echo What's his name?
		set /p nb1=" Type here: "
		cls
	) else if "%nb%" == "2" (
		echo What's their names?
		set /p nb2=" Type here: "
		cls
	) else if "%nb%" == "3" (
		echo Whats is their names?
		set /p nb3=" Type here: "
		cls
	) else (
		echo Enter valid option
		pause >nul
		cls
		goto brothers
	)
			
:sisters
		cls
		echo How many sisters do you have?
		set /p ns="type here: "
		cls
		if "%ns%" == "1" (
		echo What's her name?
			set /p ns1=" Type here: "
			cls
		) else if "%ns%" == "2" (
		echo What's their names?
			set /p ns2=" Type here: "
			echo and
			set /p nd22=" Type here: "
			cls
		) else if "%ns%" == "3" (
		echo What's their names?
			set /p ns3=" Type here: "
			echo and
			set /p ns32=" Type here: "
			echo and
			set /p ns33=" Type here: "
			cls
		) else (
			echo Enter valid option
			pause >nul
			cls
			goto sisters
		)
		
:child
		cls
		echo Do you have child ^(Y/N^)?
		set /p c=" Type here: "
		
		if "%c%" == "y" (
			echo How many child/s do you have?
			set /p cy=" Type here: "
		
				if "%cy%" == "1" (
					
				) else if "%cy%" == "2" (
				
				) else if "%cy%" == "3" (
					
				) else (
				echo Error not difined
				pause >nul
				goto child
				)
		) else if "%c%" == "n" (
			echo Sorry for asking
			pause >nul
			cls
		) else (
			echo COMMAND ERROR
			pause >nul
			goto Child
		)