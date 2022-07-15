@Echo off
cd \
echo Please wait...
set e=reg add "HKU\.DEFAULT\Control Panel\Keyboard" /v InitialKeyboardIndicators /t REG_SZ /d
%e% 2 /f
%e% 3 /f
%e% 2 /f
set e=echo
%e% removing the 3D Object folder
reg delete HKLM\software\microsoft\windows\currentVersion\explorer\myComputer\nameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A} /f
%e% disabling Cortana
reg add "HKLM\software\policies\microsoft\windows\Windows Search" /f
reg add "HKLM\software\policies\microsoft\windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
%e% disabling xbox apps
set p1=powershell get-service
set p2=set-service -startuptype disabled
%p1% *xbox* ^| %p2%
%e% (1/2)
%p1% get-service *xbl* ^| %p2%
%e% (2/2) DONE!
%e%.
%e% disabling unnecessary services...
%p1% get-service *sysmain* ^| %p2%
%e% (1/10)
%p1% get-service *btagservice* ^| %p2%
%e% (2/10)
%p1% get-service *bthserv* ^| %p2%
%e% (3/10)
%p1% get-service *bluetoothuser* ^| %p2%
%e% (4/10)
%p1% get-service *diagtrack* ^| %p2%
%e% (5/10)
%p1% get-service *phonesvc* ^| %p2%
%e% (6/10)
%p1% get-service *mapsbroker* ^| %p2%
%e% (7/10)
%p1% get-service *wisvc* ^| %p2%
%e% (8/10)
%p1% get-service *wmpnetworksvc* ^| %p2%
%e% (9/10)
%p1% get-service *wpcmonsvc* ^| %p2%
%e% (10/10) DONE!
set p1=schtasks /change /tn "\Microsoft\Windows\
set p2=/disable
%p1%Customer Experience Improvement Program\Consolidator" %p2%
%p1%Customer Experience Improvement Program\Consolidator" %p2%
%p1%Feedback\Siuf\DmClient" %p%p2%
%p1%Feedback\Siuf\DmClientOnScenarioDownload" %p2%
%p1%helloface\FODCleanupTask" %p2%
%p1%Windows\shell\FamilySafetyMonitor" %p2%
%p1%shell\FamilySafetyRefreshTask" %p2%
%p1%Windows Defender\Windows Defender Cache Maintenance" %p2%
%p1%Windows Defender\Windows Defender Cleanup" %p2%
%p1%Windows Defender\Windows Defender Scheduled Scan" %p2%
%p1%Windows Defender\Windows Defender Verification" %p2%
set p1=reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches\
set p2=/v StateFlags0015 /t REG_DWORD /d 2 /f
%p1%Active Setup Temp Folders" %p2%
%p1%BranchCache" %p2%
%p1%D3D Shader Cache" %p2%
%p1%Delivery Optimization Files" %p2%
%p1%Device Driver Packages" %p2%
%p1%Diagnostic Data Viewer database files" %p2%
%p1%Downloaded Program Files" %p2%
%p1%Internet Cache Files" %p2%
%p1%Language Pack" %p2%
%p1%Old ChkDsk Files" %p2%
%p1%Recycle Bin" %p2%
%p1%RetailDemo Offline Content" %p2%
%p1%System error memory dump files" %p2%
%p1%System error minidump files" %p2%
%p1%Temporary Files" %p2%
%p1%Temporary Setup Files" %p2%
%p1%Temporary Sync Files" %p2%
%p1%Thumbnail Cache" %p2%
%p1%Update Cleanup" %p2%
%p1%Upgrade Discarded Files" %p2%
%p1%Setup Log Files" %p2%
%p1%User file versions" %p2%
%p1%Windows Defender" %p2%
%p1%Windows Error Reporting Files" %p2%
%p1%Windows Upgrade Log Files" %p2%
set p1=for /d %%i in ("users\*") do
%p1% del /s /q /a /f "%%i\appdata\local\temp"
%p1% for /d %%j in ("%%i\appdata\local\temp\*") do rd /s /q "%%j"
set p1=del /s /q /a /f
set p2=for /d %%i in
set e=do rd /s /q "%%i"
%p1% "windows\prefetch"
%p2% ("windows\prefetch\*") %e%
%p1% "windows\temp"
%p2% ("windows\temp\*") %e%
set e=
set p1=
set p2=
cleanmgr /sagerun:15
shutdown -r -t 0
