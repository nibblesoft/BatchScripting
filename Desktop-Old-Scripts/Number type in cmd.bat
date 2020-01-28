
:menu
	@echo off
	setlocal enableextensions enabledelayedexpansion
	set /p UserInput=Enter a number: 
	set /a Test=UserInput
	if !Test! EQU 0 (
	if !UserInput! EQU 0 (
		echo Number
	) else (
	echo Not a number
	)
	) else (
		echo Number
	)
	pause >nul
	goto menu

REM EQU - equal
REM NEQ - not equal
REM LSS - less than
REM LEQ - less than or equal
REM GTR - greater than
REM GEQ - greater than or equal

REM You're probably not doing this in a DOS batch file. Or at least, support for set /p is unheard of for me in DOS :-)

REM You could use substrings. In fact I have written a parser for a specific regular language that way once, but it's cumbersome. The easiest way would probably be to assign the contents of %userinput% to another variable, using set /a. If the result comes out as 0 you need to check whether the input itself was 0, otherwise you can conclude it was a non-number:

REM @echo off
REM setlocal enableextensions enabledelayedexpansion
REM set /p UserInput=Enter a number: 
REM set /a Test=UserInput
REM if !Test! EQU 0 (
  REM if !UserInput! EQU 0 (
    REM echo Number
  REM ) else (
    REM echo Not a number
  REM )
REM ) else (
  REM echo Number
REM )
REM However, this works only for numbers in the range of Int32. If you just care for any number (possibly floating-point as well) then you need to resort to the loop-based approach of dissecting it.

REM NOTE: Updated to solve the space issues. However, there is still a problem lurking: Entering 123/5 yields "number", since set /a can evaluate this ...