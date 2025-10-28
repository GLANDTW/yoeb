@echo off
PUSHD %~DP0 & cd /d "%~dp0"
%1 %2
mshta vbscript:createobject("shell.application").shellexecute("%~s0","goto :runas","","runas",1)(window.close)&goto :eof
:runas

setlocal EnableDelayedExpansion

set "inifile=C:\Users\Administrator\Desktop\IOT\setnb.ini"
set "newName="
set "ipAddress="

for /f "tokens=1,2 delims==" %%a in ('type "%inifile%"') do (
    if "%%a"=="nob" set "nob=%%b"
)

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /C:"IPv4"') do (
    set "ipAddress=%%a"
    goto breakLoop
)

:breakLoop

if not defined nob (
    echo 無法找到nob值。
    goto end
)

if not defined ipAddress (
    echo 無法找到IP地址。
    goto end
)

set "ipAddress=%ipAddress: =%"
for /f "tokens=3,4 delims=." %%i in ("%ipAddress%") do set "ipAddress=%%i_%%j"
set "newName=VM-%nob%-%ipAddress%"

wmic computersystem where name="%computername%" call rename name="%newName%"

:end
endlocal