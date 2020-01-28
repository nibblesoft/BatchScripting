
REM Script created by Ivandro Ismael
:menu
	@echo off
	cls
	setlocal enabledelayedexpansion
:name

		echo What's your name?
		set /p x=" Type here: "
		cls

:age

		echo How old are you^?
		echo If you don't want tell your age its ok^^!
		echo Just type ^(n^)
		set /p age=" Type here: "
		cls
			if /i "!age:~0,1!" == "n" (
				goto profession
			)

:profession

		cls
		echo Do you have a job ^(y/n^)?
		set /p job=" Type here: "

		if /i "!job:~0,1!" == "y" (
			cls
			echo What do you do?
			set /p iy="Type here: "

		) else if /i "!job:~0,1!" == "n" (
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
		set /p father_name="Type here: "
		cls
		echo Whta's your mather's name?
		set /p mather_name="Type here: "
		cls

:brothers
		REM HERE I HAVE TO USE A LOOP CONDITION
		cls
		echo How many brothers do you have?
		echo Type in cardinal numbers #
		set /p nb="type here: "
		cls

	if "!nb!" equ "1" (
		echo What's his name?
		set /p nb="Type here: "
		cls

	) else if "!nb!" gtr "1" (
		for /l %%I in (1,1,!nb!) do (
			echo.
			echo Enter name for you brother %%I
			set /p nb%%I="Type the here=> "
		)

	) else (
		echo Enter valid option
		pause >nul
		cls
		goto brothers
	)

:sisters
		REM HERE I HAVE TO USE A LOOP CONDITION
		cls
		echo How many sisters do you have?
		echo Type in cardinal numbers #
		set /p ns="type here: "
		cls

	if "!nb!" equ "1" (
		echo What's his name?
		set /p ns="Type here: "
		cls

	) else if "!ns!" gtr "1" (
		for /l %%I in (1,1,!ns!) do (
			echo.
			echo Enter name for you sister %%I
			set /p ns%%I="Type the here=> "
		)

	) else (
		echo Enter valid option
		pause >nul
		cls
		goto sisters
	)

:child
		cls
		echo Do you have child (Y/N)?
		set /p c=" Type here: "

		if "%c%" == "y" (
			echo How many child/s do you have?
			set /p cy=" Type here: "

			if "%cy%" == "1" (
				echo What's his/her name?
					set /p chn1= Type name here

			) else if "%cy%" == "2" (
				echo What's their names?
					set /p chn1=" Type names here: "
					set /p chn2=" Type name here: "

			) else if "%cy%" == "3" (
				echo What's their names?
				set /p chn1="Type name here: "
				set /p chn2="Type name here: "
				set /p chn3="Type name here: "
			) else (
			echo Error not difined
			pause >nul
			goto child
			)
		) else if "%c%" == "n" (
			echo Sorry for asking!
			pause >nul
			cls
		) else (
			echo COMMAND ERROR
			pause >nul
			goto Child
		)