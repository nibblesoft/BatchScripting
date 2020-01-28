	
	REM Universal Password changer (v4.5)
	REM By: Ivandro Ismael
	REM THERE IS SOME WAY TO RUN ANY SCRIPT WITHOUT REQUETING ADMING PREVILEGS
@Echo off
	cls
	Title Pwd Changer v4.5
	setlocal enabledelayedexpansion
	color 17
	Net session >nul 2>&1
	REM If ERRORLEVEL n statements should be read as If Errorlevel >= number
	REM i.e.
	REM If ERRORLEVEL 0 will return TRUE when the errorlevel is 64
	REM An alternative and often better method of checking Errorlevels is to use the string syntax along with the %ERRORLEVEL% variable:
		If not '%errorlevel%' == '0' (
			Echo.
			Echo.
			Echo                  =========================================
			Echo                        You ain't running as admin
			Echo                   Re-Open The Scripts and re-run it as admin
			Echo                  =========================================
			pause >nul && color 07 && cls && exit /b
		)
:menu
	Title Menu Label
	cls
	Echo.
	Echo                      ===================================
	Echo                                 PWD Changer v4.1
	Echo                      ===================================
	Echo.
	Echo                             ^| (1)- Changer         ^|
	Echo                             ^| (2)- Users Available ^|
	Echo                             ^| (3)- User Info       ^|
	Echo.
	set "input="
	set /p input="Enter the option here: "
	
	If /i "!input:~-1,1!" == "1" (
		goto :CHANGE
	) Else If /i "!input:~-1,1!" == "2" (
		call :User
		goto :menu
	) Else If /i "!input:~-1,1!" == "3" (
		goto :info
	) Else (
		color 0c && cls
		Echo.
		Echo.
		Echo ============================================================
		Echo Command !input! is not defined, make sure you entered the
		Echo correct value and try again... If you keep getting error
		Echo contact the admin...
		Echo Email: ivandrofly@gmail.com
		Echo =============================================================
		Echo.
		Echo Note: The defined values are: 1 ^& 2
		Echo.
		pause 1>nul && color 17 && goto :menu
	)
	
:CHANGE
	@Echo off && cls
	Title Changing Label
	Echo.
	Echo.
	Echo                           @==========================@
	Echo                  ==============================================
	Echo                   While you are type it will not shows you pwd
	Echo                  ==============================================
	Echo                           @==========================@
	Echo.
	Echo.
	Net User "%username%" * 2>nul && timeout /t 5 && cls && goto :menu || color 0c && cls && Echo. && Echo. && Echo ERROR, You must run the scripts as admin & pause >nul & goto :change
	REM Net User LOGINUSERID * /DOMAIN ISN'T WORKING
	
:User
	Title User Label
	For /f "tokens=3 delims= " %%A in ('Net User ^| find "Administrator"') do (
		Echo.
		Echo.
		Echo You current User's name is : %%A
		pause >nul
		goto ::eof
	)
	
:info
	Title Info Label
	cls
	Echo.
	Echo.
	Echo.
		Net User "%USERNAME%"
		Echo. 
		Echo Do you want to export all your User-info type ^(Y/N^)
		set "info="
		set /p info="Type a option and press enter: "
			
			If /i "!info:~0,1!" == "y" (
				Net User "%USERNAME%" 1>"%~dp0\%USERNAME%_INFO.txt" || Echo ERROR && pause >nul
				cls
				notepad "%~dp0\%USERNAME%_INFO.txt"
				goto :menu
			) Else If /i "!info:~0,1!" == "n" (
				cls
				goto :menu
			) Else (
				cls
				color c
				Echo.
				Echo.
				REM ^^! IS A PIPE CHARACTER ESCAPE
				REM NOTE ALL exclamation ^^! symbols need to be escaped charcarter '^^'
				Echo                           =========================
				Echo                ==================================================
				Echo                                     Error^^!^^!^^!
				Echo                               Enter valid value^^!^^!^^!
				Echo                ==================================================
				Echo                           ==========================
				pause 1>nul && color 17 && goto :info
			)
			
goto :eof





REM @Echo off

REM :: BatchGotAdmin
REM :-------------------------------------
REM REM  --> Check For permissions
REM >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM REM --> If error flag set, we do not have admin.
REM If '%errorlevel%' NEQ '0' (
    REM Echo Requesting administrative privileges...
    REM goto UACPrompt
REM ) Else ( goto gotAdmin )

REM :UACPrompt
    REM Echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    REM Echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    REM "%temp%\getadmin.vbs"
    REM exit /B

REM :gotAdmin
    REM If exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    REM pushd "%CD%"
    REM CD /D "%~dp0"
REM :--------------------------------------

REM <YOUR BATCH SCRIPT HERE>