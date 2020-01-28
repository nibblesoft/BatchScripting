@echo off
CLS
setlocal

::THIS LINE WILL ASSIGN VARIABLE
SET start=10
SET length=9
SET string=THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG

:: THE 'CALL SET' IS USED ONLY FOR VARIABLE EX:(%%variable:~%variable1%,%varialbe2%%%)
CALL SET substring=%%string:~%start%,%length%%%

:: THIS LINE WILL REPLACE 'BROWN FOX' WITH 'Ivandrofly'

call set substring1=%%substring:%substring%=Ivandrofly%%

:: WE CAN USE THS STRING DOWN HERE --> But we don't need to use %%"^"%%
:: CALL SET substring=%string:~10,9%
ECHO (%substring1%)
pause > nul


REM THIS IS HOW TO SING VAR AS CHARPTER SET