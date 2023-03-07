New-Item -ItemType Directory -Path $PSScriptroot\Development\DattoRMM -ErrorAction SilentlyContinue -Force
Remove-Item $PSScriptroot\Development\DattoRMM\DattoRMM.psm1 -ErrorAction SilentlyContinue -Force
Remove-Item $PSScriptroot\Development\DattoRMM\DattoRMM.psd1 -ErrorAction SilentlyContinue -Force
Remove-Item $PSScriptroot\Development\DattoRMM\DattoRMM.ps1 -ErrorAction SilentlyContinue -Force
Get-ChildItem -Recurse .\functions\*.ps1 |ForEach-Object{ Get-Content $_ |out-file -FilePath .\Development\DattoRMM\DattoRMM.psm1 -Append} 
$PublicFunctions = Get-ChildItem -Recurse .\functions\*.ps1
Copy-Item $PSScriptroot\DattoRMM.psd1 $PSScriptroot\Development\DattoRMM\DattoRMM.psd1
Update-ModuleManifest .\Development\DattoRMM\DattoRMM.psd1 -FunctionsToExport $PublicFunctions.basename