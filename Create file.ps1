cls

#creates file of specified size

#$fileNum = Read-Host -Prompt 'Please enter # of files to create'
#$fileSize = Read-Host -Prompt 'Please enter file size...ie 50kb, 50mb, 50gb'

$fileNum = 1

$NewFiles = @()
 
function GenNewFile{
   param( [string]$FilePath,[double]$Size )
 
   $file = [System.IO.File]::Create($FilePath)
   $file.SetLength($Size)
   $file.Close()
   Get-Item $file.Name
}


for ($i=0;$i -lt $fileNum; $i++){
	$RandomChar = -join ((97..122) | get-random -count 5 | % {[char]$_})
	if (test-path E:){
		$NewFiles += GenNewFile -FilePath E:\testfile_$RandomChar.txt -Size 76.6gb
		#Get-ChildItem $NewFiles[$i] | % { $_.CreationTime = '01/01/2014 1:00' }
	}
}

Write-Output $newfiles | select -ExpandProperty name