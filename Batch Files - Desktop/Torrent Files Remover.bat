


@Echo off && Cls
Title Torret File Remover by Ivanrofly
Color a
Echo.
Echo.
Echo Note: This scrips is going to remove file only in ^<^<Donwloads^>^>
Pause
		if defined downloads (
			pushd %downloads%
			if exist .\*.torrent (
				Echo There are torrent files to be deleted
				Del /q .\*.torrent
					if errorlevel 1 (
						Echo errorlevel
					) Else (
						Echo.
						Echo Torrent file deleted successfully
						Echo Thanks for running the scripts
						popd && Pause >Nul && Exit /b
					)
			) Else (
				Echo There are not torrent files to be Deleted
				Echo make sure you found torrent files and
				Echo rerun the scripts
				Pause >Nul && Cls && Exit /b
			)
		) Else (
			Echo.
			Echo Download not defined
			Echo make sure you are running this scripts 
			Echo with admins knowledge
			Pause >Nul && Cls && Exit /b
		)

	REM THIS LINE ISN'T DEFINED TO BE RUNNING AT THE MOMENT	
	Echo.
	Echo.
	ECHO SCRIPTS COMPLE SUCCESSFULLY
	ECHO THANK FOR RUNNING IT
	ECHO SCRIPT BY: IVANDRO ISMAEL GOMES JAO
	PAUSE >NUL && EXIT /B
	