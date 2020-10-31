#Assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationCore,PresentationFramework

#Open choose directory dialog box
Do { 
$Dia=[System.Windows.Forms.FolderBrowserDialog]::new()
$Dia.Description='Select the folders to be backuped up, click Cancel when done'
$Dia.Dispose()
$Dia.ShowDialog() 
$SP=$Dia.SelectedPath
$SP | Out-File .\Folder\Source.txt -Append
} Until (-not $SP)

#For choosing destination folder
$Button=[System.Windows.MessageBoxButton]::OK
$Title="Notice"
$Body="Select the backup destination folder next"
$Icon=[System.Windows.MessageBoxImage]::Information
[System.Windows.MessageBox]::Show($body,$Title,$Button,$Icon)
 
$Dia.Description='Select backup folder (cloud or external drive)'
$Dia.ShowDialog() 
$SD=$Dia.SelectedPath
$SD| Out-File .\Folder\Destination.txt 


#Register script in Task Scheduler

[string]$WD= Get-Location
$TD = "$WD\Folder"

$Action= New-ScheduledTaskAction -Execute "$TD\Auto-Backup Script.exe" -WorkingDirectory "$TD"
$Trigger = New-ScheduledTaskTrigger -Daily -At 12am
$Settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -AllowStartIfOnBatteries

Register-ScheduledTask -TaskName 'BackupScript' -Action $Action -Trigger $Trigger -RunLevel Highest -Settings $Settings

Push-Location $TD
& '.\Auto-Backup Script.exe'