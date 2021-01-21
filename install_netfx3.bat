@echo off

echo Please enter Windows instalation media location (example D:)
set /p loc=

dism /online /enable-feature /featurename:NetFX3 /all /limitaccess /source:%loc%\sources\sxs
