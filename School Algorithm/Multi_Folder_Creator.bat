
@echo off
	cls
	
	:_option1
	for %%A in (
	"Ivandro\Ismael"
	"Ivandro\Gomes Jao\"
	"Ivandro\Ivandro Ismael Gomes Jao"
	) do (
	md %%A
	)
	
	
	:_option2
		for /r "Ivandro\" %%G in (.) do (
		echo %%G
		xcopy "*.bat" "%%G"
	)
	pause