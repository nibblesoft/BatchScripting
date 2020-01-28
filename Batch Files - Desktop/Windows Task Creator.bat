
@Echo Off & Cls
Title Windows TaskSchedule ^| Event Creator
SCHTASKS /create /tn "Ivandrofly" /tr "\"c:\%PROGRAMFILES%\CCleaner\CCleaner.exe /auto" /sc daily /sd 12/12/2013 /st 17:00
Echo %ERRORLEVEL%
pause >nul