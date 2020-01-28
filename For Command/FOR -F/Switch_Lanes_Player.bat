@echo off
	cls
	goto :label
	for /r "%music%\" %%G in ("Switch Lanes  (Feat The Game).mp3") do (
		%%G
		)
		pause >nul
		:label
		set /p ".=Enter nbre:" <nul
		set /p "nbr=Enter 1: "
		set /p ".=Enter nbre:" <nul
		set /p ""nbr2=Enter 2: "
		pause >nul