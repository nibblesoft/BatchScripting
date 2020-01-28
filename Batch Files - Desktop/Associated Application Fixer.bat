
@echo Off && Cls
Echo.
REM Reg Delete HKCR\.exe
Goto :#Testing

:#8
REM .EXE
Reg Delete HKCR\.exe
Reg Add HKCR\.exe /t REG_SZ /ve  /d "exefile"
Reg Add HKCR\.exe /t REG_SZ /v "Content Type" /d "application/x-msdownload"
Reg Add HKCR\.exe\PersistentHandler /ve /d "{098f2470-bae0-11cd-b579-08002b30bfeb}"

:#7
Reg Add HKCR\exefile /ve /d "Application"
Reg Add HKCR\exefile /t REG_BINARY /v "EditFlags" /d "38070000"
REM NOTE: I USED THE TWO PERCENT SYMBOLE: ONLY ONE WILL BE SHOWN IN REGISTY EDITOR
Reg Add HKCR\exefile /t REG_EXPAND_SZ /v "FiendlyTypeName" /d "@%%SystemRoot%%\System32\shell32.dll,-10156"
Reg Add HKCR\exefile\DefaultIcon /ve /d "%%1"
Reg Add HKCR\exefile\shell\open /t "REG_BINARY" /v "EditFlags" /d 00000000
Reg Add HKCR\exefile\shell\open\command /ve /d "\"%%1\" %%*"
Reg Add HKCR\exefile\shell\open\command /v "IsolatedCommand" /d "\"%%1\" %%*"

:#6
Reg Add HKCR\exefile\shell\runas /v HasLUAShield
Reg Add HKCR\exefile\shell\runas\command\ /ve /d "\"%%1\" %%*"
Reg Add HKCR\exefile\shell\runas\command\ /v "IsolatedCommand" /d "\"%%1\" %%*"

:#5
Reg Add HKCR\exefile\shell\runas\runasuser /ve /d "@Shell32.dll,-50944"
Reg Add HKCR\exefile\shell\runas\runasuser /v "Extended"
Reg Add HKCR\exefile\shell\runas\runasuser /v "SuppressionPolicyEx" /d "{F211AA05-D4DF-4370-A2A0-9F19C09756A7}"

:#4
Reg Add HKCR\exefile\shell\runas\runasuser\command\ /v "DelegateExecute" /d "{ea72d00e-4960-42fa-ba92-7792a7944c1d}"
Reg Add HKCR\exefile\shellex
Reg Add HKCR\exefile\shellex\ContextMenuBarHandlers /ve /d "Compatibility"
Reg Add HKCR\exefile\shellex\ContextMenuBarHandlers\Compatibility /ve /d "{1d27f844-3a1f-4410-85ac-14651078412d}"
Reg Add HKCR\exefile\shellex\DropHandler /ve /d "{86C86720-42A0-1069-A2E8-08002B30309D}"

:#3
Reg Delete HCKR\SystemFileAssociations\.exe
Reg Add HKCR\SystemFileAssociations\.exe /v FullDetails /d "prop:System.PropGroup.Description;System.FileDescription;System.ItemTypeText;System.FileVersion;System.Software.ProductName;System.Software.ProductVersion;System.Copyright;*System.Category;*System.Comment;System.Size;System.DateModified;System.Language;*System.Trademarks;*System.OriginalFileName"
Reg Add HKCR\SystemFileAssociations\.exe /v "InfoTip" /d "prop:System.FileDescription;System.Company;System.FileVersion;System.DateCreated;System.Size"
Reg Add HKCR\SystemFileAssociations\.exe /v "TileInfo" /d "prop:System.FileDescription;System.Company;System.FileVersion;System.DateCreated;System.Size"

:#2
Reg Delete HKCR\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.exe
Reg Add HKCR\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.exe
Reg Add HKCR\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.exe\OpenWithList
Reg Add HKCR\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.exe\OpenWithProgids /t REG_NONE /v exefile

:#1
Reg Delete HKEY_LOCAL_MACHINE\SOFTWARE\Classes\.exe
Pause >nul && Exit /b
Reg Add HKLM\SOFTWARE\Classes\.exe /ve /d "exefile"
Reg Add HKLM\SOFTWARE\Classes\.exe /v "Content Type" /d "application/x-msdownload"
Reg Add HKLM\SOFTWARE\Classes\.exe\PersisteneHandler /ve /d "{098f2470-bae0-11cd-b579-08002b30bfeb}"
Pause >nul && Exit /b
REM THIS WILL AUTOMATICILLY ACCEPT THE PROMPT WITH YEAS
REM Echo y | REG DELETE HKLM\Software\MyCo /va

Goto :EOF
:#Testing
Reg Add HKCR\.exefile\shell\runas /v HasLUAShield
Reg Add HKCR\.exefile\shell\open\command /ve /d "\"%%1\" %%*"
	REM THIS WILL CHECK IF THE RETURN ERRORLEVEL IS 1 OR GREATER  THAN 1 (1 OR > 1) NOT ONLY 1
	if errorlevel 1 (
		echo The Registry wasn't added
		pause >nul
	) else (
		echo The Registy key were added successfully
		pause >nul
	)
Cls && exit /b 