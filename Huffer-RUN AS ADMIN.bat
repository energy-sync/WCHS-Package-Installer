@echo off

echo Note: Microsoft Flight Simulator and Foilsim will not be installed.
echo Note: Aery does not have a silent install option, so the installer with GUI will run first.
echo Note: The computer will restart, and an admin will need to log in to make sure Inventor finishes installation.
echo --------------------------------------------------------------------------------------------------------------

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
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f >nul

if exist "C:\Program Files (x86)\Aery32" (
	echo Aery is already installed, skipping...
) else (
	echo Installing Aery...
	start /wait "" "\\wcstech\installs\Aery\aery\setup.exe"
)

if exist "C:\Program Files (x86)\Adobe\Acrobat Reader DC" (
	echo Adobe Acrobat Reader DC is already installed, skipping...
) else (
	echo Installing Adobe Acrobat Reader DC...
	msiexec /i "\\wcstech\Installs\Adobe\2018-19\Acrobat Reader DC\8-13-18\MSI\AcroRdrDC1801120055_en_US\AcroRead.msi" /qn
)

if exist "C:\Program Files (x86)\DRC INSIGHT Online Assessments" (
	echo DRC Insight is already installed, skipping...
) else (
	echo Installing DRC Insight...
	msiexec /i "\\wcstech\Installs\DRC Insight\drc_insight_setup.msi" /qn
)

if exist "C:\Program Files (x86)\TestNav" (
	echo ISTEP TestNav is already installed, skipping..
) else (
	echo Installing ISTEP TestNAV...
	msiexec /i "\\wcstech\Installs\ISTEP\testnav-1.7.3.msi" /qn
)

if exist "C:\Program Files (x86)\IndianaSecureBrowser" (
	echo Indiana Secure Browser is already installed, skipping...
) else (
	echo Installing Indiana Secure Browser...
	msiexec /i "\\wcstech\Installs\Indiana SecureBrowser\IndianaSecureBrowser10.4-2018-08-16.msi" /qn
)

if exist "C:\Program Files (x86)\Meraki" (
	echo Meraki is already installed, skipping...
) else (
	echo Installing Meraki...
	msiexec /i "\\wcstech\Installs\MerakiMerakiSM-Agent-computer-systems-manager.msi" /qn
)

if exist "C:\Program Files (x86)\VideoLAN\VLC" (
	echo VLC Player is already installed, skipping...
) else (
	echo Installing VLC Player...
	start /wait "" "\\wcstech\Installs\vlc\vlc-3.0.7-win32.exe" /S
)

if exist "C:\Program Files (x86)\Microsoft Office\Office16" (
	echo Microsoft Office 2016 Pro Plus is already installed, skipping...
) else (
	echo Installing Microsoft Office 2016 Pro Plus...
	start /wait "" "\\wcstech\Installs\microsoft\Office 2016 Pro Plus\setup.exe"
)

if exist "C:\Program Files (x86)\Google\Chrome" (
	echo Google Chrome is already installed, skipping...
) else (
	echo Installing Google Chrome...
	start /wait "" "\\wcstech\installs\Chrome\Win\Chrome Setup.exe"
)

if exist "C:\Program Files (x86)\MDSolids40" (
	echo MDSolids is already installed, skipping...
) else (
	echo Installing MD Solids...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\MD_Solids\4_1\MDSolids_Installer\SetupMDSolids40.msi" /qn
)

if exist "C:\Program Files (x86)\Robomatter Inc\ROBOTC Development Environment 4.X" (
	echo ROBOTC is already installed, skipping...
) else (
	echo Installing ROBOTC...
	msiexec /i "\\wcstech\installs\pltw\2017-2018\ROBOTC\ROBOTCforVEXRobotics_455Release.msi" /qn
)

if exist "C:\Program Files (x86)\Vernier Software\Logger Pro 3" (
	echo Logger Pro is already installed, skipping...
) else (
	echo Installing Logger Pro...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\loggerpro\3_10_1\LoggerPro3_10_1_SilentInstaller\Logger Pro 3.msi" /qn
)

if exist "C:\Program Files (x86)\Gravity Simulator" (
	echo Gravity Simulator is already installed, skipping...
) else (
	echo Installing Gravity Simulator...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\Gravity Simulator\Gravity Simulator 64bit.msi" /qn
)

if exist "C:\Program Files (x86)\AGI" (
	echo AGI STK is already installed, skipping...
) else (
	echo Installing AGI STK...
	msiexec /i "\\wcstech\installs\pltw\2015-2016\STK 10\STK 10.1.3 Client Install\MSI installer\AGI STK 10.1.3 64bit.msi" /qn
)

if exist "C:\Program Files (x86)\Cura_19.12" (
	echo Cura is already installed, skipping...
) else (
	echo Installing Cura...
	msiexec /i "\\wcstech\installs\LulzBot\Cura 3D printing 64bit.msi" /qn
)

if exist "C:\Program Files (x86)\West Point Bridge Designer 2014 (2nd Edition)" (
	echo West Point Bride Designer is already installed, skipping...
) else (
	echo Installing West Point Bridge Designer...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\WestPointBridge\win\64bit\West Point Bidge Designer.msi" /qn
)

if exist "C:\PLTW software\Virtual Tensile Tester" (
	echo Virtual Tensile Tester is already installed, skipping...
) else (
	echo Installing Virtual Tensile Tester...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\Virtual Tensile Tester\installer\Virtual Tensile Tester.msi" /qn
)

if exist "C:\Program Files (x86)\QuickTime" (
	echo Quicktime is already installed, skipping...
) else (
	echo Installing Quicktime...
	msiexec /i "\\wcstech\installs\quicktime\AppleApplicationSupport.msi" /qn
	msiexec /i "\\wcstech\installs\quicktime\QuickTime.msi" /qn
)

if exist "C:\Program Files\Autodesk\Inventor 2020" (
	echo Autodesk Inventor 2020 is already installed, skipping...
) else (
	echo Installing Autodesk Inventor 2020...
	mkdir c:\temp_pltw
	mkdir c:\temp_pltw\Inventor_2020
	start /wait "" robocopy \\wcstech\installs\pltw\2019-2020\Autodesk\Inventor_2020 c:\temp_pltw\Inventor_2020 /E /S
	start /wait "" c:\temp_pltw\Inventor_2020\Inventor_2020.lnk
	:waiti
	tasklist /FI "IMAGENAME eq Setup.exe" 2>NUL | find /I /N "Setup.exe">NUL
	if "%ERRORLEVEL%"=="0" goto waiti
	del /Q "C:\temp_pltw"
	reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 5 /f >nul
	shutdown /r
)

REM enables User Account Control
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 5 /f >nul

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