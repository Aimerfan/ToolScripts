@echo off
cd /d "%~dp0"
reg export HKCU\Software\SimonTatham\PuTTY PuTTYconfig.reg /y
