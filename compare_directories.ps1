

Add-Type -AssemblyName System.Windows.Forms
$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$FolderBrowser.Description = "Select first path"
[void]$FolderBrowser.ShowDialog()
$path_1 = $FolderBrowser.SelectedPath


Add-Type -AssemblyName System.Windows.Forms
$FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$FolderBrowser.Description = "Select second path"
[void]$FolderBrowser.ShowDialog()
$path_2 = $FolderBrowser.SelectedPath


$fsoPath_1 = Get-ChildItem -Recurse -path $path_1

$fsoPath_2 = Get-ChildItem -Recurse -path $path_2

Compare-Object -ReferenceObject $fsoPath_1 -DifferenceObject $fsoPath_2


cmd /c pause | out-null
