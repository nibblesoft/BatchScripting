@echo off
echo this is wrote by ivandrofly

	REM FOR /D /r %%G in ("*") DO (
		REM REM Echo We found %%G
		REM if /i "%%~nG" == "ivandro" (
			REM echo Ivandro found
		REM )
	REM )
	pushd "d:\"
	For /f "tokens=*" %%G in ('dir /a /o /b') do (
		echo .\%%G
	)
	popd
	pause >nul
	
	REM For /f "tokens=*" %%G in ('dir /a /o /s /b') do (
		REM If /i "%%~nxG" == "autorun.inf" (
			REM Echo Skipped  --^> %%~sG
			REM Set /a skip += 1
			REM REM ACTUALLY I STOP USING THE ICON NAME AS DRIVER.ICO
		REM ) Else If /i "%%~nxG" == "Driver.ico" (
			REM Echo Skipped --^> %%~sG
			REM Set /a skip += 1
		REM ) Else (
		REM Rem The /D switch is only valid with the /S switch.
		REM Rem I add to restore only file without system attribute
			REM Attrib -h -s -r "%%G" >nul
			REM Echo Processed --^> %%~sG
			REM Set  /a rest += 1
		REM )
	REM )