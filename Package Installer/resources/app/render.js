//Dawson Vilamaa 8/8/2019
var exec = require("child_process").exec;

var username = undefined;
var password = undefined;

function studentList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function staffList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>Cisco Jabber</li><li>TestNAV</li><li>Meraki</li><li>Mimio Studio</li><li>VLC Player</li><li>Google Drive File Stream</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function hufferList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Aery</li><li>MD Solids</li><li>ROBOTC</li><li>Logger Pro</li><li>Gravity Simulator</li><li>AGI STK</li><li>Cura</li><li>West Point Bridge Designer</li><li>Virtual Tensile Tester</li><li>Quicktime</li><li>Autodesk Inventor 2020</li>";
    document.getElementById("notestitle").innerHTML = "<b><u>Notes:</u></b>"
    document.getElementById("notes").innerHTML = "<li>Microsoft Flight Simulator and Foilsim will not be installed.</li><li>Aery does not have a silent install option, so the installer will run with GUI first.</li><li>The computer will restart after installing Inventor, and an admin will need to log in to make sure it finishes installing.</li>"
}

function mccreeryList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Silhouette Studio</li><li>Adobe InDesign CC 2019</li><li>Adobe Illustrator CC 2019</li><li>Adobe Photoshop CC 2019</li><li>Adobe Animate CC 2019</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function millerList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>RoboCell</li><li>ROBOTC</li><li>Logger Pro</li><li>Cura</li><li>Quicktime</li><li>Prolight 1000</li><li>Autodesk Inventor 2020</li>";
    document.getElementById("notestitle").innerHTML = "<b><u>Notes:</u></b>";
    document.getElementById("notes").innerHTML = "<li>EnRoute will not be installed.</li><li>RoboCell and ProLight 1000 will need to have their licenses activated manually.</li><li>The computer will restart after Inventor finishes installing, and an admin will need to log in to make sure it finishes installing.</li>";
}

function millsTeacherList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>Cisco Jabber</li><li>TestNAV</li><li>Meraki</li><li>Mimio Studio</li><li>VLC Player</li><li>Google Drive File Stream</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Reflector 3</li><li>Adobe Illustrator CC 2019</li><li>Adobe InDesign CC 2019</li><li>Adobe Photoshop CC 2019</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function millsList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Adobe Illustrator CC 2019</li><li>Adobe InDesign CC 2019</li><li>Adobe Photoshop CC 2019</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function morrowList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Adobe Bridge CC 2019</li><li>Adobe Illustrator CC 2019</li><li>Adobe InDesign CC 2019</li><li>Adobe Lightroom CC 2019</li><li>Adobe Photoshop CC 2019</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function schrammList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Notepad++</li><li>Quicktime</li><li>Adobe Animate CC 2019</li><li>Adobe After Effects CC 2019</li><li>Adobe Bridge CC 2019</li><li>Adobe Media Encoder CC 2019</li><li>Adobe Dreamweaver CC 2019</li><li>Adobe Illustrator CC 2019</li><li>Adobe Photoshop CC 2019</li><li>Adobe Premiere Pro CC 2019</li><li>Adobe Audition CC 2019</li><li>Adobe Lightroom CC 2019</li><li>Certiport</li>";
    document.getElementById("notestitle").innerHTML = "";
    document.getElementById("notes").innerHTML = "";
}

function waccEngineeringLaptopsList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>RoboCell</li><li>FlowArm</li><li>ROBOTC</li><li>ProLight 1000</li><li>Autodesk Inventor 2019</li>";
    document.getElementById("notestitle").innerHTML = "<b><u>Notes:</u></b>";
    document.getElementById("notes").innerHTML = "<li>Autodesk Inventor HSM will not be installed.</li><li>RoboCell and ProLight 1000 will need to have their licenses activated manually.</li><li>The computer will restart after installing Inventor, and an admin will need to log in to make sure it finishes installing.</li>";
}

function waldeckList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Visual Studio Code</li><li>Python 3.7.4</li><li>Java Development Kit 8u92</li><li>Crimson Editor</li><li>Notepad++</li><li>NetBeans</li><li>Dr Java</li><li>jGRASP</li><li>BlueJ</li><li>App Inventor</li><li>Scratch 2</li><li>Mega 7</li><li>NetLogo</li><li>Enthought Canopy</li><li>XaoS</li><li>PuTTY</li><li>CSU Face Labeling</li><li>Adobe Bridge CC 2019</li><li>Adobe Illustrator CC 2019</li><li>Adobe InDesign CC 2019</li><li>Adobe Lightroom CC 2019</li><li>Adobe Photoshop CC 2019</li><li>Visual Studio 2015 Pro</li>";
    document.getElementById("notestitle").innerHTML = "<b><u>Note:</u></b>";
    document.getElementById("notes").innerHTML = "<li>Visual Studio Code does not have a silent install option, so the installer will run with GUI first.</li>";
}

function zakariaList() {
    document.getElementById("softwarelist").innerHTML = "<li>Adobe Acrobat Reader DC</li><li>DRC Insight</li><li>TestNAV</li><li>Indiana Secure Browser</li><li>Meraki</li><li>VLC Player</li><li>Office 2016 Pro Plus</li><li>Google Chrome</li><li>Arduino</li><li>ROBOTC</li><li>Cura</li><li>NAO Choregraphe Suite</li><li>Adobe Photoshop CC 2019</li><li>Adobe After Effects CC 2019</li><li>Autodesk Inventor 2020</li><li>Autodesk Maya 2019</li><li>Autodesk Revit 2020</li>";
    document.getElementById("notestitle").innerHTML = "<b><u>Notes:</u></b>";
    document.getElementById("notes").innerHTML = "<li>Fanuc and Unreal Engine will not be installed.</li><li>Arduino may ask if you want to install drivers. Select 'install' for these prompts.</li><li>The computer will restart after installing the Autodesk programs, and an admin will need to log in and make sure that they are finished installing.</li>";
}

function checkForComputers() {
    if (document.getElementById("computerlist").value == "") {
        showMessage();
    } else showLogin();
}

function showLogin() {
    document.getElementById("modal").style.display = "block";
    document.getElementById("user").value = process.env.username || process.env.user;
    document.getElementById("pass").select();
}

function hideLogin() {
    document.getElementById("modal").style.display = "none";
}

function showMessage() {
    document.getElementById("messagemodal").style.display = "block";
}

function hideMessage() {
    document.getElementById("messagemodal").style.display = "none";
}

function installStuff() {
    var packages = document.getElementsByName("package");
    var selectedPackage;
    var actions = document.getElementsByName("action");
    var selectedAction;
    var computers = document.getElementById("computerlist").value.split("\n");
    username = "WARSAW\\" + document.getElementById("user").value;
    password = document.getElementById("pass").value;

    for (i of packages) {
        if (i.checked == true) selectedPackage = i.value;
    }

    for (i of actions) {
        if (i.checked == true) selectedAction = i.value;
    }
    selectedAction = selectedAction.substring(0, 1);

    for (var i = 0; i < computers.length; i++) {
        if (computers[i].toLowerCase().startsWith("wcs")) computers[i] = computers[i].substring(3);
        if (computers[i].startsWith("0")) computers[i] = computers[i].substring(1);
    }

    for (i of computers) {
        var child = exec("start /wait \"\" \"" + __dirname + "\\installer.bat\" " + i + " " + selectedPackage + " " + selectedAction + " " + username + " " + password);
        child.stdout.on("data", function(data) {
            console.log("Data: " + data);
        });
        child.stderr.on("data", function(data) {
            console.log("stderr: " + data);
        });
        child.on("close", function(code) {
            console.log("exited with code " + code);
        });
        child.stdin.end();
    }

    hideLogin();
}