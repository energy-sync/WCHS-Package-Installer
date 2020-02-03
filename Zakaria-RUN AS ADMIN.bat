@echo off
echo Note: Fanuc and Unreal Engine will not be installed
echo Note: Arduino may ask if you want to install drivers. Select "install" for these prompts.
echo Note: The computer will restart after installation, and an admin will need to log in to make sure Inventor and Maya
echo       are finished installing.
echo -------------------------------------------------------------------------------------------------------------------

REM disables User Account Control
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f >nul

if exist "C:\Program Files (x86)\Arduino" (
	echo Arduino is already installed, skipping...
) else (
	echo Installing Arduino...
	start /wait "" "\\wcstech\installs\pltw\2016-2017\Arduino\arduino-1.6.9-windows.exe" /S
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
	msiexec /i "\\wcstech\Installs\MerakiMerakiSM-Agent-computer-systems-manager.msi" /passive /qn
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

if exist "C:\Program Files (x86)\Robomatter Inc\ROBOTC Development Environment 4.X" (
	echo ROBOTC is already installed, skipping...
) else (
	echo Installing ROBOTC...
	msiexec /i "\\wcstech\installs\pltw\2017-2018\ROBOTC\ROBOTCforVEXRobotics_455Release.msi" /qn
)

if exist "C:\Program Files (x86)\Cura_19.12" (
	echo Cura is already installed, skipping...
) else (
	echo Installing Cura...
	msiexec /i "\\wcstech\installs\LulzBot\Cura 3D printing 64bit.msi" /qn
)

if exist "C:\Program Files (x86)\Aldebaran Robotics\Choregraphe Suite 2.1" (
	echo NAO Choregraphe Suit is already installed, skipping...
) else (
	echo Installing NAO Choregraphe Suite...
	start /wait "" "\\wcstech\installs\Nao Robot\choregraphe-suite-2.1.4.13-win32-setup.exe" --mode unattended --licenseKeyMode licenseKey --licenseKey 654e-4564-153c-6518-2f44-7562-206e-4c60-5f47-5f45
)

if exist "C:\Program Files\Adobe\Adobe Photoshop CC 2019" (
	echo Adobe Photoshop CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe Photoshop CC 2019...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\Photoshop CC 20.0.4\Build\setup.exe" --silent
)

if exist "C:\Program Files\Adobe\Adobe After Effects CC 2019" (
	echo Adobe After Effects CC 2019 is already installed, skipping...
) else (
	echo Installing Adobe After Effects CC 2019...
	start /wait "" "\\wcstech\installs\Adobe\2019-20\Win 64\After Effects 16.1.1\Build\setup.exe" --silent
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
)

if exist "C:\Program Files\Autodesk\Maya2019" (
	echo Autodesk Maya 2019 is already installed, skipping...
) else (
	echo Installing Autodesk Maya 2019...
	mkdir c:\temp_pltw\Maya_2019
	start /wait "" robocopy \\wcstech\installs\pltw\2019-2020\Autodesk\Maya_2019 c:\temp_pltw\Maya_2019 /E /S
	start /wait "" c:\temp_pltw\Maya_2019\Maya_2019.lnk
	:waitm
	tasklist /FI "IMAGENAME eq Setup.exe" 2>NUL | find /I /N "Setup.exe">NUL
	if "%ERRORLEVEL%"=="0" goto waitm
)

if exist "C:\Program Files\Autodesk\Revit 2020" (
	echo Autodesk Revit 2020 is already installed, skipping...
) else (
	echo Installing Autodesk Revit 2020...
	mkdir c:\temp_pltw\Revit_2020
	start /wait "" robocopy \\wcstech\installs\pltw\2019-2020\Autodesk\Revit_2020 c:\temp_pltw\Revit_2020 /E /S
	start /wait "" c:\temp_pltw\Revit_2020\Revit_2020.lnk
	:waitr
	tasklist /FI "IMAGENAME eq Setup.exe" 2>NUL | find /I /N "Setup.exe">NUL
	if "%ERRORLEVEL%"=="0" goto waitr
)

:FIX LATER
:if exist "C:\Program Files\Autodesk\AutoCAD 2020" (
:	echo Autodesk AutoCAD 2020 is already installed, skipping...
:) else (
:	echo Installing Autodesk AutoCAD 2020...
:	mkdir c:\temp_pltw\AutoCAD_2020
:	start /wait "" robocopy \\wcstech\installs\pltw\2019-2020\Autodesk\AutoCAD_2020 c:\temp_pltw\AutoCAD_2020 /E /S
:	start /wait "" c:\temp_pltw\AutoCAD_2020\AutoCAD_2020.lnk
:	:waita
:	tasklist /FI "IMAGENAME eq Setup.exe" 2>NUL | find /I /N "Setup.exe">NUL
:	if "%ERRORLEVEL%"=="0" goto waita
:)

del /Q "C:\temp_pltw"

REM enables User Account Control
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 5 /f >nul

echo Done I think

shutdown /r