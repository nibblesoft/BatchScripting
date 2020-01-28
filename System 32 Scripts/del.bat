
@echo off
	cls
	:: WE WILL NEED TO RUN CMD AND TYPE: 
:: DEL.BAT 'FILE1.TXT' 'FILE2.TXT 'FILE3.TXT'
	 ::          %1       %2          %4
del %1
del %2
del %3

if errorlevel 2 (
	echo one error found
	pause >nul
) else if errorlevel 1 (
	echo two errors found 
	pause >nul
) else if errorlevel 0 (
	echo errorlevel 0
	pause >nul
)