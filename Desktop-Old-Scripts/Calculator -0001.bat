@echo off
CLS
setlocal ENABLEDELAYEDEXPANSION
:menu

echo Enter a 
set /p "nbr1=Enter nbr1: "
set /p "nbr2=Enter nbr2: "

if !nbr1! equ !nbr2! (
		echo YOU ENETERED CORRECT ANSWER
		set /a nbr1=0 & set /a nbr2=0
		goto :menu
		pause >nul
) else (
	ECHO YOU ENTERED WRONG ASNWER
	pause >nul
	CLS
	GOTO menu
)