@echo off
	cls
	setlocal
	call :calc Tyga gaga Ismael
	echo [%return1%] and [%return2%] and [%return3%]
	pause >nul
	
	
	:calc
	:: %* WILL SHOW ALL Parameters
	:: %1 WILL CALL Parameters Nº=1
	echo %* & set return1=%1
	echo %* & set return2=%2
	echo %* & set return3=%3
	goto :eof