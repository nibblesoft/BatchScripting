@echo off
	cls
	:loop
	set x=1
	if %x% lss 10 (
	color 02
	echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
	goto loop
	)