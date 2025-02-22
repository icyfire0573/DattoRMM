function Get-SiteSettings {

	<#
	.SYNOPSIS
	Fetches data of the site (including total number of devices) identified by the given site Uid.

	.PARAMETER SiteUid
	Provide site uid which will be used to return device data.
	
	#>
    
	# Function Parameters
    Param (
        [Parameter(Mandatory=$True)] 
        $siteUid
    )
	
    # Declare Variables
    $apiMethod = 'GET'
    
	# Return Site Settings
    return New-ApiRequest -apiMethod $apiMethod -apiRequest "/v2/site/$siteUid/settings" | ConvertFrom-Json

}