cls

#replace . with white space (directory)
Get-ChildItem \\desktop-3\temp\~Sorted\Movies -Force | Where-Object {$_.PSisContainer -and $_.Name -notmatch "~"; } | Rename-Item -NewName {$_.fullname -replace "\."," "} 


#place () around year (directory)
Get-ChildItem \\desktop-3\temp\~Sorted\Movies | Where-Object {$_.PSisContainer -and $_.Name -notmatch "~"; } | Rename-Item -NewName {$_.fullname -replace "\.*(\d{4})", '($1)'} 