Param(
  [parameter(mandatory=$true)][string]$folderPath,
  [parameter(mandatory=$true)][string]$findString,
  [parameter(mandatory=$true)][string]$replaceString
)

$files=Get-ChildItem $folderPath| Select-Object Name
    
    Foreach($file in $files)
    {
           $fileName= $file.Name
           $fileContent = Get-Content $folderPath'\'$fileName
           $fileContent -replace $findString , $replaceString | Set-Content $folderPath'\'$fileName
           }
















