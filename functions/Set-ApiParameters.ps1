function Set-ApiParameters{
	<#
	.SYNOPSIS
	Sets the API Parameters used throughout the module.

	.PARAMETER Url
	Provide Datto RMM API Url. See Datto RMM API help files for more information.

	.PARAMETER PublicPrivateKey
	Provide Dattto RMM API Key as user and ScretKey as password. Obtained when creating a API user in Datto RMM.
	
	#>
	
	[CmdletBinding()]
	Param(
	[Parameter(Position = 0, Mandatory=$true)]
	[ValidateSet(
		"https://pinotage-api.centrastage.net",
		"https://merlot-api.centrastage.net",
		"https://concord-api.centrastage.net",
		"https://zinfandel-api.centrastage.net",
		"https://syrah-api.centrastage.net"
	)]
	$Url,
    
	[Parameter(Position = 1, Mandatory=$true)]
	[PScredential]$PublicPrivateKey,

	
	)

	New-Variable -Name apiUrl -Value $Url -Scope Script -Force
	New-Variable -Name PublicPrivateKey -Value $PublicPrivateKey, -Scope Script -Force

	
	$accessToken = New-ApiAccessToken
	New-Variable -Name apiAccessToken -value $accessToken -Scope Script -Force
}
