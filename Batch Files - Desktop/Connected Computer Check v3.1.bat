
REM IP SCANNER BY IVANDRO ISMAEL GOMES JAO - v3.1
	@Echo OFF
	Cls
	SETLOCAL ENABLEDELAYEDEXPANSION
	TITLE Wi-Fi Scanner v3.1 by: Ivandro Ismael
REM RUN AS ADMIN BECAUSE "PING" IS A ADMIN'S COMMAND
REM BY IVANDROFLY
	:MENU
	Echo.
	Echo.
	Echo                               ^<^< Wi-Fi Scanner ^>^>
	Echo.
	Echo          ##############################################################
	Echo          #                                                            #
	Echo          #         BATCH SCRIPT CREATED BY: Ivandro Ismael            #
	Echo          #                                                            #
	Echo          #        http://www.facebook.com/groups/hightechia/          #
	Echo          #                                                            #
	Echo          ##############################################################
	Echo.
	Set /p "_start= Enter Start Number ==> "
	Set /p "_end= Enter End Number ==> "
	Set /a "_disconnected=0"
	Set /a "_connected=0"
	Echo.
	
	REM THIS For IS USED For COUTING
	For /l %%I In (%_start%,1,%_end%) do (
		REM This For will find computer name, I could not add 'delims= "' delims are Set by default as 'SPACE and TAB'
		For /f "tokens=2 delims= " %%G In ('ping -a -w 100 -n 1 -i 1 192.168.1.%%I ^| find "Pinging"') do (
			Rem This script line will find computer status
			For /f "tokens=11,12 delims=, " %%A In ('ping -a -w 100 -n 1 -i 1 192.168.1.%%I ^| find "Packets"') do (
					Set _IP=%%G
					Set _STATUS=%%A
					Echo.
				If "!_STATUS:~1,3!" == "100" (
					rem this counter need to be restarted
					Set /a _disconnected += 1
				) Else (
					rem this counter need to be restarted
					Set /a _connected += 1
					Echo                     ======================================
					Echo                        1^) - User [%%G] is Connected^^!
					Echo                        2^) - Computer IP - 192.168.1.%%I
					REM                                                (0% loos)
					Echo                        3^) - User Status ---^> %%A %%B
					Echo                     ======================================
				)
			)
		)
	)
	Echo.
	Echo.
	Echo                        ++++++ Scanning Reports ++++++
	Echo.
	Echo                      ====================================
	Echo                          Total Connected Devices [!_connected!]
	Echo                      ====================================
	Echo                          Total Disconnected Devices [!_disconnected!]
	Echo                      ====================================
:Label_Check
	Echo.
	Echo.
	
	Echo Do you want to check my Web-Site?
		Set /p "_web=Type (y/n): "
			
			If /i "!_web:~0,1!" == "y" (
				start http://www.facebook.com/groups/hightechia/
				Cls && goto :Else
			) Else If /i "!_web:~0,1!" == "~0,1" (
				Echo.
				Echo Nothing entered on the variable, 
				Echo make sure you entered something and re-run the scripts
				Timeout /t 5 /nobreak >nul && Cls && Goto :Label_Check
			) Else (
				:Else
				Echo.
				Echo.
				Echo Do you want to Re-Scan?
				Set /P "_RSCAN=Type (y/n)==> "
					
					If /i "!_RSCAN:~0,1!" == "y" (
						Cls && GOTO :MENU
					) Else If /i "!_RSCAN!" == "n" (
						Echo.
						Echo Thanks For using this scripts
						Timeout /t 5 >nul && exit /b
					) Else (
						Echo.
						Echo You entered invalid option
						Echo Check you option and try again^^!^^!
						pause >nul
						Cls && goto :Else
					)
			)