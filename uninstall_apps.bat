@echo off

rem  Uninstall OneDrive
%systemroot%\SysWOW64\OneDriveSetup.exe /uninstall

rem  Uninstall Windows Store and it's apps
:unstore
powershell -command "get-appxprovisionedpackage -online | remove-appxprovisionedpackage -online -allusers"
if not %errorlevel%==0 goto unstore

