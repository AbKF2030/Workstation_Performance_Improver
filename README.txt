WARNING! Before running this script on a computer\laptop, ask the end-user these questions:
- Do you use MS Outlook (or a similar program) to access your work email?
	* If they say no, run the program.
	* If they say yes, ask this question:
		- Do you use MS Outlook (or a similar program) to access your work email outside the workplace?
			* If they say no, run the program.
			* If they say yes, don't run the program because it can delete the configurations necessary
			to access their work email via Outlook (or a similar program) anywhere.



WHO BENEFITS FROM THIS SCRIPT:
______________________________
- Any employee running Windows 10 on their workstation.



WHAT WILL THIS PROGRAM DO:
__________________________

- Delete all the temporary files in each user folder.
- Delete all the temporary files inside the Windows directory (i.e. %WINDIR% directory).
- Disables the following:
	* Blutooth services (Remember! I created this program to disable any service not necessary for work.)
	* Cortana
	* Xbox services
	* Maps Broker ("[a] Windows service for application access to downloaded maps")
	* Family Control services
	* "3D OBjects" Folder (which resides inside your user directory (i.e. %USERPROFILE% directory))
	* phonesvc (a Windows phone service)
	* diagtrack: All I know is it is one of the services that causes 100% CPU usage.
	* sysmain (previuusly known as Superfetch): This service is similar to diagtrack.
	* HelloFace (and anything related to it)
	* Windows Defender (This is because all workplaces use third-party anti-virus software)
	* Anything that sends feedback to Microsoft.

- Configure Disk Cleaner (a utility that comes with Windows) to delete tghe following:
	* Active Setup Temp Folders
	* BranchCache
	* D3D Shader Cache
	* Delivery Optimization Files
	* Device Driver Packages
	* Diagnostic Data Viewer database files
	* Downloaded Program Files
	* Internet Cache Files
	* Language Pack
	* Old ChkDsk Files
	* Recycle Bin
	* RetailDemo Offline Content
	* System error memory dump files
	* System error minidump files
	* Temporary Files
	* Temporary Setup Files
	* Temporary Sync Files
	* Thumbnail Cache
	* Update Cleanup
	* Upgrade Discarded Files
	* Setup Log Files
	* User file versions
	* Windows Defender
	* Windows Error Reporting Files
	* Windows Upgrade Log Files

- Run Disk Cleaner to delete the aforementioned.

WHAT TO BEWARE OF:
__________________

- The last command of my script will restart your computer. You must save your files.
- If the Disk Cleaner runs for a relatively long time, close it in order to my script to restart your computer.
	* How long? I leave it at your discretion.
	* Personally, I prefer to run this script when I'm away from the workstation for a long time.



DO'S AND DONT'S
_______________
- Do not open someBinFolder unless you want to see the content of my script. No altering or moving the script
elsewhere.

- In order to use my program to the fullest, you must run it as an administrator.