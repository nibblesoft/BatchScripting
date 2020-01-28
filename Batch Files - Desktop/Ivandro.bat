
@echo off
title Subtitle
for /r d:\ %%G in (*.srt) do (
	echo %%~nG
)
pause >nul