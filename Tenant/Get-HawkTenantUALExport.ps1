
Function Get-HawkTenantUALExport {
	
	<#
 
	.SYNOPSIS
	Gathers ALL unified audit log data

	.DESCRIPTION
	This function gathers ALL unified audit log entries for the period specified. It should only be run if you know what you are doing, or where analysing large troves of data.
	
	.OUTPUTS
	Creates "UAL_Export.csv" in the Hawk output directory.

	.EXAMPLE
	Start-HawkTenantUALExport
	
	#>

	Test-EXOConnection
	Send-AIEvent -Event "CmdRun"

    Out-LogFile "Exporting all Unified Audit Logs" -Action 

	# Exports all activities from the unified audit log
	$M365UnifiedAuditLogEntry = Get-AllUnifiedAuditLogEntry -UnifiedSearch ("Search-UnifiedAuditLog")

	# If the results are empty/null, do nothing, otherwise add them to the CSV
	if ($null -eq $M365UnifiedAuditLogEntry){
		Out-LogFile "No events found. Please ensure there are events for this period, or that unified auditing is enabled for your Office 365 tenant."
	}
	else {
		Out-LogFile "Audit activities found - writing to UAL_Export.csv" -Notice

		# Go thru each even and prepare it to output to CSV
		Foreach ($event in $M365UnifiedAuditLogEntry){
		
			$event.auditdata | ConvertFrom-Json | Select-Object -Property Id,
				Operation,
				ResultStatus,
				Workload,
				ClientIP,
				UserID,
				@{Name='ActorUPN';Expression={($_.ExtendedProperties | Where-Object {$_.Name -eq 'actorUPN'}).value}},
				@{Name='targetName';Expression={($_.ExtendedProperties | Where-Object {$_.Name -eq 'targetName'}).value}},
				@{Name='env_time';Expression={($_.ExtendedProperties | Where-Object {$_.Name -eq 'env_time'}).value}},
				@{Name='correlationId';Expression={($_.ExtendedProperties | Where-Object {$_.Name -eq 'correlationId'}).value}}`
				| Out-MultipleFileType -fileprefix "UAL_Export" -csv -append
		}
		$M365UnifiedAuditLogEntry | Out-MultipleFileType -fileprefix "UAL_Export" -csv -append
	}
}
