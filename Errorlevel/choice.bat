	REM You must run this as administrator
	
	@echo off
	color 0a
	title Pi game 00F DOOM!
	set pi=3.1
	:enterpi
	cls
	echo pres Q to exit
		echo pi: %pi%
		
	choice /c:1234567890q /n /m " Enter PI (0-9): "
	IF errorlevel == 1 set addpi=1
	IF errorlevel == 2 set addpi=2
	IF errorlevel == 3 set addpi=3
	IF errorlevel == 4 set addpi=4
	IF errorlevel == 5 set addpi=5
	IF errorlevel == 6 set addpi=6
	IF errorlevel == 7 set addpi=7
	IF errorlevel == 8 set addpi=8
	IF errorlevel == 9 set addpi=9
	IF errorlevel == 10 set addpi=0
	IF errorlevel == q goto exit

:addpi
	set pi=%pi%%addpi%
	set addpi=
	goto enterpi
:exit
echo this is exit
pause > nul