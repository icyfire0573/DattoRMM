@Echo OFF
Echo Launch dir: "%~dp0"
REM echo "C:\Program Files (x86)\WiX Toolset v3.11\bin\candle.exe" -dSolutionPath=%~dp0 -out %~dp0obj\Release\ -arch x86 DattoRMM.wxs
"C:\Program Files (x86)\WiX Toolset v3.11\bin\candle.exe" -dSolutionPath=%~dp0 -out %~dp0build\ -arch x86 DattoRMM.wxs

REM "C:\Program Files (x86)\WiX Toolset v3.11\bin\Light.exe" -out %~dp0\Release\DattoRMM.msi -cultures:null -wixprojectfile %~dp0obj\Release\DattoRMM.wixobj
"C:\Program Files (x86)\WiX Toolset v3.11\bin\Light.exe" %~dp0build\DattoRMM.wixobj -out  %~dp0build\DattoRMM.msi