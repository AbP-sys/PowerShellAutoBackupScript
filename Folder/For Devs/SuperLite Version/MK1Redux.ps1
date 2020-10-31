#Directories 
$Dir1=
$Dir2=
$Dir3=
$Dir4=
$Dir5=

$MasterOrigin=$Dir1,$Dir2,$Dir3,$Dir4,$Dir5
$Destination="D:\TestDestforPS"

#COPY

ForEach ($i in $MasterOrigin) {robocopy $i $Destination /E /XX /COPYALL |Out-File $Destination\logs.txt -Append}