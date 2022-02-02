$Data=Get-Content -path .\Source.txt |Select-Object -SkipLast 1
$Dest=Get-Content -path .\Destination.txt -First -1
foreach ($line in $Data)
{robocopy $line $Dest /E /XX /COPYALL | Out-File $Dest\Backuplogs.txt -Append} 