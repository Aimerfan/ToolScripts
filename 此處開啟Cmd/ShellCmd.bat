@echo off
set regpath=HKEY_CLASSES_ROOT\Directory\shell\cmd
reg query %regpath% /v HideBasedOnVelocityId > NUL 2> NUL
if ERRORLEVEL 1 (
    rem reg 
) else (
    reg add %regpath% /v HideBasedOnVelocityId /t REG_DWORD /d 00639bc8
    echo Successed.
)
pause