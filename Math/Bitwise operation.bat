
@ECHO OFF
	CLS
	SETLOCAL ENABLEDELAYEDEXPANSION
	:MENU
	color 17
	echo.
	echo.
	echo.
	echo      BITWISE  [5]
	echo      OPERATOR [3]
	echo.
	echo  ====== 5 -- 3 =====
	echo.
	echo 1 ---^> Goto AND ^= ^& [1]
	echo 2 ---^> Goto OR  ^= ^| [7]
	echo 3 ---^> Goto XOR ^= ^^ [6]
	echo 3 ---^> Goto NOT ^= ^^! [6]
	echo.
	echo.
	
	set /p var="ENTER: "
		
		if /i !var! == 1 (
			GOTO :AND
		) else if /i !var! == 2 (
			GOTO :OR
		) else if /i !var! == 3 (
			GOTO :XOR
		) else (
			echo.
			echo.
			color cd
			echo YOU ENTERED INVALID VALUE [!var!]
			pause >nul
			set var=
			cls
			goto :MENU
		)

	:AND
		
		REM 0101 AND 0011 = 0001 (decimal 1)
		:: 0101
		:: ----
		:: 0011
		:: ====
		:: 0001
		
		color 0a
		set /a Resultat=5^&3
		echo.
		echo !Resultat!
		pause >nul
		set var=
		cls
		goto :MENU
	
	:OR
		
		REM 0101 OR 0011 = 0111 (decimal 7)
		:: 0101
		:: ----
		:: 0011
		:: ====
		:: 0111
		
		color 0d
		set /a Resultat=5^|3
		echo.
		echo !Resultat!
		pause >nul
		cls
		set var=
		goto :MENU
	
	:XOR
		
		REM 0101 XOR 0011 = 0110 (decimal 6)
		:: 0101
		:: ----
		:: 0011
		:: ====
		:: 0110
		
		color 0e
		set /a Resultat=5^^3
		echo.
		echo !Resultat!
		pause >nul
		set var=
		cls
		goto :MENU
		