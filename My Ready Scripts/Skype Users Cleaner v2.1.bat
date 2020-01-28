
REM SKYPE CLEANER BY IVANDRO ISMAEL GOMES JAO V2.1
@Echo off && Cls
	setlocal enabledelayedexpansion
:menu
	title SKYPE USERS REMOVER v2.1
	Echo.
	Echo                        =====================================
	Echo                         Scritps Created By: Ivandro Ismael
	Echo                        =====================================
	Echo.           
	Echo Do you want to run the scripts(y/n)?
	rem line will reset the variable
		set "x="
		set /p x="Type here and press enter: "
				
				If /i "!x:~0,1!" == "~0,1" (
					Echo.
					Echo You entered nothing into variable, make sure you entered
					Echo a value which is correct to run the scripts...
					Echo If you keep getting this message please contact the Scripts Creator
					Echo For more info...
					Echo Email: ivandrofly@gmail.com
					Echo.
					pause >nul && Cls && Goto :menu
					
				) Else If /i "!x:~0,1!" == "y" (
					Cls && Goto :running
				) Else If /i "!x:~0,1!" == "n" (
					Echo.
					Echo ================================
					Echo The scripts is now going to close
					Echo Thanks For using me...
					Echo ================================
					Echo Email: ivanrofly@gmail.com
					Echo Email: ivanrofly@outlook.com
					Echo Email: ivanrofly@hotmail.com
					Echo Twitter: @ivandrofly
					Echo Facebook: ivandrofly
					Echo ====================================
					timeout /t 5 /nobreak >nul && exit /b
				) Else (
					Echo.
					Echo The value you just entered isn't the valid one
					Echo make sure you entered the value demanded For admin
					Echo If your still getting this message you may need to
					Echo contact your scripts developer
					pause >nul && Cls && Goto :menu
					
				)
				
:running
		REM THIS LINE WILL CHECK If THE VARIALBE PROGRAMFILES IS DEFINED ^/ NOT ^& IT WILL RETURN A RESULTAT
		
		If defined PROGRAMFILES (
			pushd %PROGRAMFILES% >nul && Cls
		) Else (
			Echo.
			Echo The variable isn't defined in this
			Echo computer, make sure you are running this
			Echo in a DEFINED COMPUTER.
			timeout /t 5 /nobreak >nul 2>&1 && Cls
		)
		
		If not exist .\Skype\ (
			Cls
			Echo.
			Echo.
			Echo.
			Echo You haven't installed the skype
			Echo make sure you have skype installed and re-run the
			Echo script to remove all unusually user named left-over
			timeout /t 3 /nobreak >nul
			
			Echo Do you want to download the skype right now^?
				set "skype="
				set /p skype="Type ^(y/n^): "
						
					If /i "!skype!" == "y" (
						start http://www.skype.com/en/download-skype/skype-For-windows/downloading/ >nul 2>&1
							If errorlevel 1 (
								Echo.
								Echo Your get errorlevel
								Echo contact your script creator
								Echo he may have the solution For this kind of problems
								pause >nul && Cls && Goto :running
								
							)
							
					) Else If /i "!skype!" == "n" (
						Echo.
						Echo Thansk For running the script^^!
						timeout /t 3 /nobrek >nul
						Cls && Goto :menu
						REM This will check is no value applyed on VarSkype
					) Else If /i "!skype!" == "" (
						Echo.
						Echo Nothing entered
						Echo make sure you entered the
						Echo demanded value to the variable 
						Echo and press entere to check If your want to
						Echo download the skype ^/ not^^!^^!
						Cls && Goto :menu
						
					) Else (
						Echo.
						Echo Invalid option
						Echo try again and entere the correct one
						Echo your entered !skype!
						Cls && Goto :menu
						
					)
		) Else (
			Cls
			Echo.
			Echo.
			If exist "%USERPROFILE%\Appdata\Roaming\Skype\" (
				pushd "%USERPROFILE%\Appdata\Roaming\Skype\" >nul
						
						REM THIS LINE WILL RESET THE VALUES ON THE VARIALBES
						For /l %%L in (1,1,20) do (set "name%%L=")
					
					:manage
						Cls
						Echo.
						Echo.
						Echo.
						set /a "count=0"
						
						REM THIS WILL PREVENT SHOWING UNNEEDED DIRECOTORIES
						For /f "tokens=* delims= " %%G in ('dir /b /a /o /a:-a') do (
							if /i not "%%~G" == "Content" (
								if /i not "%%~G" == "DbTemp" (
									if /i not "%%~G" == "My Skype Received Files" (
										if /i not "%%~G" == "Pictures" (
											if /i not "%%~G" == "shared_dynco" (
												if /i not "%%~G" == "shared_httpfe" (
													set /a count +=1
													Echo Found UserName #!count! ---^> %%~G
													set "name!count!=%%~G"
												)
											)
										)
									)
								)
							)
						)
						
						Echo.
						Echo.
						Echo Enter the folder number and press enter^^!
						Echo Note: Make sure you don't entered the letter, only
						Echo the number are allowed.
						Echo.
							set "folder="
							set /p folder="Type Here An Press Enter: "
							
								If /i "!folder!" == "" (
									Echo.
									Echo Nothing entered make sure you input a
									Echo value to the variable and try again^^!^^!^^!
									pause >nul && Goto :manage
								) Else (
									If !folder! gtr !count! (Echo The Value you just entered is greater the the demanded values && pause >nul && Cls && Goto :manage)
									call :varmanager
									REM THIS LINE WILL REMOVE THE SELECTED FOLDER
									Rd /s /q ".\!name!" >nul
									Echo ===========================================
									Echo User !name! Removed successfully
									Echo ===========================================
									pause >nul
									Cls
									Echo.
									Echo.
									Echo Thanks For usung the scripts && Cls
									Echo.
									Echo Do you want to quit the scripts^?^^!
									Set /p x="Enter you option here: "
										If /i "!x:~0,1!" == "y" (exit /b)
										If /i "!x:~0,1!" == "n" (Cls && Goto :menu)
								)
								
				
			) Else (
				Echo.
				Echo No skype folder were found in your hard driver
				Echo try re-install the skype and re-run the script
				Echo thanks For ussing the scipts
				Echo.
				Echo Press any key to quit the script
				pause >nul && Cls && exit /b
				
			)
		)
		Echo.
		Echo Quitting the scripts^^!
		timeout /t 4 /nobreak >nul
		exit /b
:varmanager
	set name=!name%folder%!
	Goto :eof
	
		REM SKYPE PATHS
		REM C:\USERS\IVANDROFLY-LK\APPDATA\ROAMING\SKYPE