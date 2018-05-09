cls


Get-ChildItem \\desktop-3\temp\~Sorted\Movies -Force | Where-Object {!$_.PSisContainer} | Rename-Item -NewName {$_.fullname -replace "\s","."}