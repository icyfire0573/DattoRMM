<#
 
	.SYNOPSIS
	A PowerShell module that connects to the Datto RMM API.

	.DESCRIPTION
	After loading this module run Set-DrmmApiParameters to setup the module.
	This module contains all the Datto RMM v2 REST API controllers that can used in PowerShell to perform the followiing operations:
	
	account-controller : Operations on account
	alerts-controller : Operations on alerts
	audit-controller : Operations on audit data
	device-controller : Operations on devices
	job-controller : Operations on jobs
	sites-controller : Operations on sites
	system-controller : AEM API System operations
	user-controller : Operations on users
	
	See https://merlot-api.centrastage.net/api/swagger-ui.html#/ to see full list of operations.
	
	.COPYRIGHT
    Copyright (c) Datto. All rights reserved. Licensed under the MIT license.
    See https://github.com/aaronengels/DattoRMM/blob/master/LICENSE.md  for license information.
	

	
#>

