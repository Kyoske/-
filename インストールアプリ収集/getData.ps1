 Get-ChildItem -Path(
'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall',
'HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall') |
% { Get-ItemProperty $_.PsPath | Select-Object DisplayName, DisplayVersion, Publisher } |
Export-Csv -NoTypeInformation -Encoding Default C:\user\apps.csv