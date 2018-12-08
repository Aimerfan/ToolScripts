@echo off
:: http://blog.joaoko.net/archives/2674
cd /d "%~dp0"
reg export "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" TrayNotify.reg /y
reg delete  "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams /f
reg delete  "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream /f
taskkill /f /im explorer.exe && start explorer.exe
