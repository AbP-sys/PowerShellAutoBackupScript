-----------------------------------------------
Instructions for Installation
-----------------------------------------------
-Run the setup file and choose the directories you intend to backup one by one
-Click Cancel when you are done and you will be prompted to choose the backup folder
-Recommended to minimize all windows after running Setup.exe
NOTE: The Script will be installed wherever you run the Setup, so only launch it from where you intend

-----------------------------------------------
General Notes
-----------------------------------------------
-The backup script is set to run everyday at 00:00 hrs
-It also runs once when you finish installation for verification
-If you'd like to change the frequency or time, open Task Scheduler from Start menu and customize the properties of "BackupScript" to your liking
-A logs file is generated in the backup destination

-----------------------------------------------
Adding/Removing folders to be backed up
-----------------------------------------------
-To add a new location for backup, open Source.txt, add a directory in a new line AND HIT ENTER
-The backup folder can also be modified in Destination.txt but only one location is supported (to modify, simply change the text and save&quit, no need to hit enter)

-----------------------------------------------
Uninstall
-----------------------------------------------
-Simply delete all files here, no files are generated elsewhere 
-For super CLEAN uninstall, delete "BackupScript" from TaskScheduler