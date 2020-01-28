@echo off
cls
	setlocal enabledelayedexpansion
	goto :skip
	
	set variable=I'm Ivandro Isamel Gomes Jao
	set var=%variable:~-9,9%
	
	:: call set res=%%var:%var%=%variable:~0,3%%%
	call set res=%%var:%var%=Ivandrofly%%
	echo !res!
	pause >nul
	
	:skip
	set var1=Ivandro
	set var2=%var1:~0,4%
	:: var2 = Ivan
	
::	echo %var1:~-3,3%
:: 	echo %var2%

:: 'CALL SET' IS USE BECAUSE WE ARE USING VARIBLES INSIDE STRING
	call set var3=%%var2:%var2%=%var1:~-3,3%%%
	echo %var3%
	pause >nul