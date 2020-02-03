@echo off
echo Note: Visual Studio Code does not have a silent install option, so the installer will run first.
echo ------------------------------------------------------------------------------------------------
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

if exist "C:\Program Files\Microsoft VS Code" (
	echo Visual Studio Code is already installed, skipping...
) else (
	echo Installing Visual Studio Code...
	start /wait "" "\\wcstech\installs\microsoft\Visual Studio Code\VSCodeSetup-x64-1.36.1.exe"
)

if exist "C:\Program Files (x86)\Python37-32" (
	echo Python 3.7.4 is already installed, skipping...
) else (
	echo Installing Python 3.7.4...
	start /wait "" "\\wcstech\installs\Python\python-3.7.4.exe" /quiet InstallAllUsers=1 PrependPath=1
)

if exist "C:\Program Files (x86)\Adobe\Acrobat Reader DC" (
	echo Adobe Acrobat Reader DC is already installed, skipping...
)else (
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

if exist "C:\Program Files\Java\jdk1.8.0_92" (
	echo Java Development Kit 8u92 is already installed, skipping...
) else (
	echo Installing Java Development Kit 8u92...
	msiexec /i "\\wcstech\installs\java\Win\jdk\x64\msi\Java Platform SE 8 U92.msi" /qn
)

if exist "C:\Program Files (x86)\Emerald Editor Community\Crimson Editor SVN286M" (
	echo Crimson Editor is already installed, skipping...
) else (
	echo Installing Crimson Editor...
	start /wait "" "\\wcstech\installs\Crimson Editor - Emerald Editor\cedt-286M-setup.exe" /S
)

if exist "C:\Program Files (x86)\Notepad++" (
	echo Notepad++ is already installed, skipping...
) else (
	echo Installing Notepad++...
	start /wait "" "\\wcstech\installs\notepad++\npp.6.8.3.Installer.exe" /S
)

if exist "C:\Program Files\NetBeans 8.1" (
	echo NetBeans is already installed, skipping...
) else (
	echo Installing NetBeans...
	msiexec /i "\\wcstech\installs\Java Dev Applications\x64\Netbeans\Netbeans Java EE v8_1.msi" /qn)
)

if exist "C:\Program Files (x86)\Dr Java" (
	echo Dr Java is already installed, skipping...
) else (
	echo Installing Dr Java...
	msiexec /i "\\wcstech\installs\Java Dev Applications\x64\Dr_Java\Dr Java.msi" /qn
)

if exist "C:\Program Files (x86)\jGRASP" (
	echo jGRASP is already installed, skipping...
) else (
	echo Installing jGRASP...
	msiexec /i "\\wcstech\installs\Java Dev Applications\x64\jGrasp\jGrasp 2.0.2.msi" /qn
)

if exist "C:\Program Files (x86)\BlueJ" (
	echo BlueJ is already installed, skipping...
) else (
	echo Installing BlueJ...
	msiexec /i "\\wcstech\installs\pltw\2018-2019\Bluej\BlueJ-windows-412.msi" /qn
)

if exist "C:\Program Files (x86)\AppInventor" (
	echo App Inventor is already installed, skipping...
) else (
	echo Installing App Inventor...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\MIT App Inventor\MIT App Inventor 64bit.msi" /qn
)

if exist "C:\Scratch 2.exe" (
	echo Scratch 2 is already installed, skipping...
) else (
	echo Installing Scratch 2...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\scratch 2\setup.msi" /qn
)

if exist "C:\Program Files\MEGA7" (
	echo Mega 7 is already installed, skipping...
) else (
	echo Installing Mega 7...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\Mega 7\MEGA7.msi" /qn
)

if exist "C:\Program Files\NetLogo 5.3.1" (
	echo NetLogo is already installed, skipping...
) else (
	echo Installing NetLogo...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\NetLogo\win64\NetLogo-5.3.1-64.msi" /qn
)

if exist "C:\Program Files\Enthought\Canopy" (
	echo Enthought Canopy is already installed, skipping...
) else (
	echo Installing Enthought Canopy...
	mkdir "C:\Program Files\Enthought"
	msiexec /i "\\wcstech\installs\pltw\2016-2017\Enthought Canopy\canopy-1.7.3-win-64.msi" ALLUSERS=1 SETUP_MANAGED_COMMON_INSTALL="C:\Program Files\Enthought" /qn
)

if exist "C:\Program Files (x86)\XaoS" (
	echo XaoS is already installed, skipping...
) else (
	echo Installing XaoS...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\XaoS\XaoS 3.4 64bit.msi" /qn
)

if exist "C:\Program Files (x86)\PuTTY" (
	echo PuTTY is already installed, skipping...
) else (
	echo Installing PuTTY...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\putty\putty-0.67-installer.msi" /qn
)

if exist "C:\FaceL_Win32_1.0.0beta" (
	echo CSU Face Labeling is already installed, skipping...
) else (
	echo Installing CSU Face Labeling...
	msiexec /i "\\wcstech\installs\pltw\2016-2017\Face-L Labeling Software\CSU Face Labeling 1.0.0 beta 64bit.msi" /qn
)

if exist "C:\Program Files\Adobe\Adobe Bridge CC 2019" (
	echo Adobe Bridge CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe Bridge CC 9.0.3...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\Bridge CC 9.0.3\Build\setup.exe" --silent
)

if exist "C:\Program Files\Adobe\Adobe Illustrator CC 2019" (
	echo Adobe Illustrator CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe Illustrator 23.0.3...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\Illustrator 23.0.3\Build\setup.exe" --silent
)

if exist "C:\Program Files\Adobe\Adobe InDesign CC 2019" (
	echo Adobe InDesign CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe InDesign 14.0.2...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\InDesign 14.0.2\Build\setup.exe" --silent
)

if exist "C:\Program Files\Adobe\Adobe Lightroom CC" (
	echo Adobe Lightroom CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe Lightroom 2.3...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\Lightroom 2.3\Build\setup.exe" --silent
)

if exist "C:\Program Files\Adobe\Adobe Photoshop CC 2019" (
	echo Adobe Photoshop CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe Photoshop CC 20.0.4...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\Photoshop CC 20.0.4\Build\setup.exe" --silent
)

if exist "C:\Program Files\Microsoft Visual Studio 12.0" (
	echo Visual Studio 2015 Pro is already installed, skipping...
) else (
	echo Installing Visual Studio 2015 Pro...
	start /wait "" "\\wcstech\installs\microsoft\Visual_Studio_Pro_2015\vs_professional.exe" /ProductKey BRNRC83C3RDFMD6PPYV4WFG2C /q /norestart /InstallSelectableItems NativeLanguageSupport_Group
)

start /wait "" "\\wcstech\installs\WCHS\Python setup-RUN AS ADMIN.bat"

REM enables User Account Control
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 5 /f >nul

echo Done I think
pause
if %choice%==s (
	shutdown /s /c "Software installed. Shutting down."
)

if %choice%==r (
	shutdown /r /c "Software installed. Restarting."
)

if %choice%==l (
	shutdown /l
)