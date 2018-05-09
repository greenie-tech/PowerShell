#Generates two text files that are named with random numbers and set to a creation time of 01/01/2014

$NewFiles = @()
 
function GenNewFile{
   param( [string]$FilePath,[double]$Size )
 
   $file = [System.IO.File]::Create($FilePath)
   $file.SetLength($Size)
   $file.Close()
   Get-Item $file.Name
}


for ($i=0;$i -lt 1; $i++){
	$RandomChar = -join ((97..122) | get-random -count 5 | % {[char]$_})
	if (test-path c:\temp){
		$NewFiles += GenNewFile -FilePath c:\temp\errol_$RandomChar.txt -Size 5.1mb
		#Get-ChildItem $NewFiles[$i] | % { $_.CreationTime = '01/01/2014 1:00' }
        Get-ChildItem $NewFiles | % { $_.CreationTime = '01/01/2014 1:00' }
        Get-ChildItem $NewFiles
	}
}  