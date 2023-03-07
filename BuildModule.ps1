New-Item -ItemType Directory -Path $PSScriptroot\Build\DattoRMM -ErrorAction SilentlyContinue -Force | Out-Null
Remove-Item $PSScriptroot\Build\DattoRMM\DattoRMM.psm1 -ErrorAction SilentlyContinue -Force
Remove-Item $PSScriptroot\Build\DattoRMM\DattoRMM.psd1 -ErrorAction SilentlyContinue -Force
Remove-Item $PSScriptroot\Build\DattoRMM\DattoRMM.ps1 -ErrorAction SilentlyContinue -Force
Get-ChildItem -Recurse .\functions\*.ps1 |ForEach-Object{ Get-Content $_ |out-file -FilePath .\Build\DattoRMM\DattoRMM.psm1 -Append} 
$PublicFunctions = Get-ChildItem -Recurse .\functions\*.ps1
Copy-Item $PSScriptroot\DattoRMM.psd1 $PSScriptroot\Build\DattoRMM\DattoRMM.psd1
Update-ModuleManifest .\Build\DattoRMM\DattoRMM.psd1 -FunctionsToExport $PublicFunctions.basename