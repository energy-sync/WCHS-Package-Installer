@echo off
set choice=n
if [%1]==[] (
	echo Would you like to shut down, restart, or log off after installation?
	set /p choice="(s = shutdown, r = choice, l = logoff, n = nothing): "
	goto start
)
if %1==/n set choice=n
if %1==/s set choice=s
if %1==/r set choice=r
if %1==/l set choice=l

:start
REM disables User Account Control
reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f >nul

if exist "C:\Program Files (x86)\Adobe\Acrobat Reader DC" (
	echo Adobe Acrobat Reader DC is already installed, skipping...
) else (
	echo Installing Adobe Acrobat Reader DC...
	msiexec /i "\\wcstech\Installs\Adobe\2018-19\Acrobat Reader DC\8-13-18\MSI\AcroRdrDC1801120055_en_US\AcroRead.msi" /passive /qn
)

if exist "C:\Program Files (x86)\Cisco Systems\Cisco Jabber" (
	echo Cisco Jabber is already installed, skipping...
) else (
	echo Installing Cisco Jabber...
	msiexec /i "\\wcstech\installs\cisco\Jabber\Cisco Jabber Windows\CiscoJabberSetup.msi" /passive /qn
)

if exist "C:\Program Files (x86)\TestNav" (
	echo ISTEP TestNAV is already installed, skipping...
) else (
	echo Installing ISTEP TestNAV...
	msiexec /i "\\wcstech\Installs\ISTEP\testnav-1.7.3.msi" /passive /qn
)

if exist "C:\Program Files (x86)\Meraki" (
	echo Meraki is already installed, skipping...
) else (
	echo Installing Meraki...
	msiexec /i "\\wcstech\Installs\MerakiMerakiSM-Agent-computer-systems-manager.msi" /passive /qn
)

if exist "C:\Program Files (x86)\mimio\MimioStudio" (
	echo Mimio Studio is already installed, skipping...
) else (
	echo Installing Mimio Studio...
	msiexec /i "\\wcstech\installs\mimio\Mimio 11\11_54\Windows\mimio-studio-11.54-en.msi" /passive /qn
)

if exist "C:\Program Files (x86)\VideoLAN\VLC" (
	echo VLC Player is already installed, skipping...
) else (
	echo Installing VLC Player...
	start /wait "" "\\wcstech\installs\vlc\vlc-3.0.7-win64.exe" /S
)

if exist "C:\Program Files\Google\Drive File Stream" (
	echo Google Drive File Stream is already installed, skipping...
) else (
	echo Installing Google Drive File Stream...
	start /wait "" "\\wcstech\installs\Google Drive\GoogleDriveFSSetup.exe" --silent --desktop_shortcut
)

if exist "C:\Program Files\Microsoft Office\Office16" (
	echo Office 2016 Pro Plus is already installled, skipping...
) else (
	echo Installing Office 2016 Pro Plus...
	start /wait "" "\\wcstech\Installs\microsoft\Office 2016 Pro Plus\setup.exe"
)

if exist "C:\Program Files (x86)\Google\Chrome" (
	echo Google Chrome is already installed, skipping...
) else (
	echo Installing Google Chrome...
	start /wait "" "\\wcstech\installs\Chrome\Win\Chrome Setup.exe"
)

REM enables User Account Control
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f >nul

echo Done I think

if %choice%==s (
	shutdown /s /c "Software installed. Shutting down."
)

if %choice%==r (
	shutdown /r /c "Software installed. Restarting."
)

if %choice%==l (
	shutdown /l
)