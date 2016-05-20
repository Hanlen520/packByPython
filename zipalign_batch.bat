@echo off
echo begin running
if exist %1\zipaligned (
    rd /s /q %1\zipaligned
)
md %1\zipaligned
for /f "delims=" %%i in ('dir %1\*.apk /b') do (
    zipalign -v 4  %1\%%i %1\zipaligned\%%i
	del %1\%%i
)
echo end running