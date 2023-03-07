function Set-ApiParameters {
	[CmdletBinding()]
	[alias("New-Login")]
	<#
	.SYNOPSIS
	Sets the API Parameters used throughout the module.

	.PARAMETER Url
	Provide Datto RMM API Url. See Datto RMM API help files for more information.

	.PARAMETER PublicPrivateKey
	Provide Dattto RMM API Key as user and Datto RMM API SecretKey as password. Obtained when creating a API user in Datto RMM.
	#>

	

	Param(
	[Parameter(Position = 0, Mandatory=$True)]
	[ValidateSet(
		"https://pinotage-api.centrastage.net",
		"https://merlot-api.centrastage.net",
		"https://concord-api.centrastage.net",
		"https://zinfandel-api.centrastage.net",
		"https://syrah-api.centrastage.net"
	)]
	$Url,
    
	[Parameter(Position = 1, Mandatory=$True)]
	[PScredential]$PublicPrivateKey

	)

	New-Variable -Name apiUrl -Value $Url -Scope Script -Force
	New-Variable -Name PublicPrivateKey -Value $PublicPrivateKey -Scope Script -Force
	
	New-ApiAccessToken
	
}
