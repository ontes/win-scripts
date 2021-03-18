@echo off
set wd=C:\update

md %wd%
expand -f:* "%~dp0\*.msu" %wd%
for %%a in (%wd%\windows*.cab) do dism /online /add-package /packagepath=%%a
rd %wd% /s /q