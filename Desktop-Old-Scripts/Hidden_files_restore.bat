

@echo off
	cls
	echo ENTER DRIVER YOU WANT TO REMOVE HIDEN FILES
	set /p driver=" Enter the driver letter here: "
	
	echo Enter the file extention you want to restore (e.x.: mp3; jpg; wma; avi)
	set /p extension= "Enter the files extention: "
	attrib -s -a -h -r "%driver%:\*.%extension%"