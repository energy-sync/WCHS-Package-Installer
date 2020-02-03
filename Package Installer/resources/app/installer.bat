@echo off
set computer=%1
set package=%2
set action=%3
set username=%4
set password=%5
"\\wcstech\installs\wchs\package installer\psexec" -i -s -u %username% -p %password% \\WCS%computer% "\\wcstech\installs\wchs\%package%-RUN AS ADMIN.bat" /%action%
exit