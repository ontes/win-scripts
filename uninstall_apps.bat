@echo off

rem  Uninstall OneDrive
%systemroot%\SysWOW64\OneDriveSetup.exe /uninstall

rem  Uninstall Edge 8
pushd %programfiles(x86)%\Microsoft\Edge\Application\8*\Installer
setup.exe --uninstall --force-uninstall --system-level
popd

rem  Uninstall Windows Store and it's apps
:unstore
powershell -command "get-appxprovisionedpackage -online | remove-appxprovisionedpackage -online -allusers"
if not %errorlevel%==0 goto unstore

