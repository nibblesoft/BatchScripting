@echo off
	cls
	setlocal ENABLEDELAYEDEXPANSION
	color 02
	:loop
	set x=1
	if !x! lss 10 (
	echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!
	goto loop
	)
	
	:: if !x! lss 10 (
	:: echo !random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!!random!
	::goto loop
	::) >> File_name.txt
	:: To create a file with random numbers!
	