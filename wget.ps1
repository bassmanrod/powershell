
$folderPath = "C:\scripts"

if (-not (Test-Path -Path $folderPath)) {
	    New-Item -Path $folderPath -ItemType Directory
	    Write-Output "Folder Created Successfully!"
}

else {
	    Write-Output "Folder already exists!"
}

$url_a = "https://raw.githubusercontent.com/bassmanrod/powershell/refs/heads/master/deleteGoogleCache.ps1"
$url_b = "https://raw.githubusercontent.com/bassmanrod/powershell/refs/heads/master/deleteCache.bat"

$path_to_file_a = "$folderPath\deleteGoogleCache.ps1"
$path_to_file_b = "$folderPath\deleteCache.bat"

Write-Output "Beginning fetch.";
Invoke-WebRequest $url_a -OutFile $path_to_file_a
Invoke-WebRequest $url_b -OutFile $path_to_file_b
Write-Output "Fetch ended.";

#Invoke-RestMethod $url_a -OutFile $path_to_file_a
#Invoke-RestMethod $url_b -OutFile $path_to_file_b

Write-Output "Done."`
