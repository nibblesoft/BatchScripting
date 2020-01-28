@echo off
	cls
	Rem @echo off
	rem cls
	:: set a=3
	rem	set /a b=a*2,c=2*(b+5)
	rem echo %c%
	rem b = 6
	rem 
	rem c = 11 * 2
	rem c = 22
		
Set /P _dept=Please enter Department || Set _dept=NothingChosen
If "%_dept%"=="NothingChosen" goto :sub_error
If /i "%_dept%"=="finance" goto sub_finance
If /i "%_dept%"=="hr" goto sub_hr
goto :eof

:sub_finance
echo You chose the finance dept
goto :eof

:sub_hr
echo You chose the hr dept

:sub_error
echo Nothing was chosen