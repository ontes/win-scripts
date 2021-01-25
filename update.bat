@echo off
 
set wd=C:\update

md %wd%
expand "%~dp0\*.msu" %wd%

for %%a in (%wd%\windows10.0-kb*-x64.cab) do dism /online /add-package /packagepath=%%a /norestart
for %%a in (%wd%\windows10.0-kb*-x64_psfx.cab) do dism /online /add-package /packagepath=%%a /norestart

rd %wd% /s /q
