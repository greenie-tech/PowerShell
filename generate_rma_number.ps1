# genenates a RMA nmuber with a date stamp

param (
[int]$NumOfDigits = 5
)

$Num = $NumOfDigits


$rma = "RMA-" + -join ([char[]](48..57)*100 | Get-Random -Count $Num)
$date = get-date -Format d 

$rma + " | " + $date



