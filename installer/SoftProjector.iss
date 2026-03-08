[Setup]
AppId={{6F6AB2A3-8E23-4A3E-A3AF-2A3B1B2A45D2}
AppName=SoftProjector
AppVersion=2.2
AppPublisher=SoftProjector
DefaultDirName={autopf}\SoftProjector
DefaultGroupName=SoftProjector
OutputDir=output
OutputBaseFilename=SoftProjector-Setup
Compression=lzma2
SolidCompression=yes
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
WizardStyle=modern
LicenseFile=..\LICENSE

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\src\win32_build\bin\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\SoftProjector"; Filename: "{app}\SoftProjector.exe"
Name: "{autodesktop}\SoftProjector"; Filename: "{app}\SoftProjector.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\SoftProjector.exe"; Description: "{cm:LaunchProgram,SoftProjector}"; Flags: nowait postinstall skipifsilent
