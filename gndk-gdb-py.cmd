@echo off
rem This is a Windows cmd.exe script used to invoke the NDK-specific Python executable
call "%NDK_ROOT%/find-win-host.cmd" NDK_WIN_HOST
if ERRORLEVEL 1 (exit /b 1)
setlocal
set SHELL=cmd
"%NDK_ROOT%/prebuilt/%NDK_WIN_HOST%/bin/python.exe" -u "%~dp0gndk-gdb.py" %*
endlocal
