#
# Module manifest for module 'PSGet_Hawk'
#
# Generated by: hawk_feedback@microsoft.com
#
# Generated on: 10/13/2017
#

@{

# Script module or binary module file associated with this manifest.
RootModule = '.\Hawk.psm1'

# Version number of this module.
ModuleVersion = '1.15.0'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '1f6b6b91-79c4-4edf-83a1-66d2dc8c3d85'

# Author of this module
Author = 'hawk_feedback@microsoft.com'

# Company or vendor of this module
CompanyName = 'Matt Byrd'

# Copyright statement for this module
Copyright = '(c) 2019 matbyrd@microsoft.com. All rights reserved.'

# Description of the functionality provided by this module
Description = 'The Hawk module has been designed to ease the burden on O365 administrators who are performing a forensic analysis in their organization.  It accelerates the gathering of data from multiple sources in the service.

It does NOT take the place of a human reviewing the data generated and is simply here to make data gathering easier.

Hawk has moved to GitHub and is availble for all to contribute.
https://github.com/Canthv0/hawk
'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(
    @{ModuleName = 'PSAppInsights'; ModuleVersion = '0.9.6'; },
    @{ModuleName = 'CloudConnect'; ModuleVersion = '1.1.2'; },
    @{ModuleName = 'RobustCloudCommand'; ModuleVersion = '1.1.3'; }
    )

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @('Microsoft.IdentityModel.Clients.ActiveDirectory.WindowsForms.dll','Microsoft.IdentityModel.Clients.ActiveDirectory.dll')

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess

NestedModules = @(
    'General\Initialize-HawkGlobalObject.ps1',
    'General\Get-AzureADPSPermissions.ps1',
    'Message\Get-HawkMessageHeader.ps1',
    'Tenant\Get-HawkTenantAzureAuthenticationLogs.ps1',
    'Tenant\Get-HawkTenantConfiguration.ps1',
    'Tenant\Get-HawkTenantEDiscoveryConfiguration.ps1',
    'Tenant\Get-HawkTenantInboxRules.ps1',
    'Tenant\Get-HawkTenantConsentGrants.ps1',
    'Tenant\Get-HawkTenantRBACChanges.ps1',
    'Tenant\Get-HawkTenantAuthHistory.ps1',
    'Tenant\Search-HawkTenantActivityByIP.ps1',
    'Tenant\Search-HawkTenantEXOAuditLog.ps1',
    'Tenant\Start-HawkTenantInvestigation.ps1',
    'Tenant\Get-HawkTenantAzureAuditLog.ps1',
    'Tenant\Get-HawkTenantUALExport.ps1',
    'User\Get-HawkUserAuthHistory.ps1',
    'User\Get-HawkUserConfiguration.ps1',
    'User\Get-HawkUserEmailForwarding.ps1',
    'User\Get-HawkUserInboxRule.ps1',
    'User\Get-HawkUserMailboxAuditing.ps1',
    'User\Get-HawkUserAdminAudit.ps1',
    'User\Get-HawkUserHiddenRule.ps1',
    'User\Start-HawkUserInvestigation.ps1',
    'User\Get-HawkUserPWNCheck.ps1',
    'User\Get-HawkUserAutoReply.ps1',
    'User\Get-HawkUserMessageTrace.ps1',
    'User\Get-HawkUserMobileDevice.ps1'
)

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-HawkTenantAzureAuthenticationLogs','Get-HawkTenantConfiguration','Get-HawkTenantEDiscoveryConfiguration',
'Get-HawkTenantInboxRules','Get-HawkTenantConsentGrants','Get-HawkTenantRBACChanges','Get-HawkTenantAzureAuditLog','Get-HawkUserAuthHistory','Get-HawkUserConfiguration',
'Get-HawkUserEmailForwarding','Get-HawkUserInboxRule','Get-HawkUserMailboxAuditing','Initialize-HawkGlobalObject',
'Search-HawkTenantActivityByIP','Search-HawkTenantEXOAuditLog','Show-HawkHelp','Start-HawkTenantInvestigation','Start-HawkUserInvestigation',
'Update-HawkModule','Get-HawkUserAdminAudit','Get-HawkTenantAuthHistory','Get-HawkUserHiddenRule','Get-HawkMessageHeader','Get-HawkUserPWNCheck','Get-HawkUserAutoReply',
'Get-HawkUserMessageTrace','Get-HawkUserMobileDevice','Get-HawkTenantUALExport'


# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @("O365","Security","Audit","Breach","Investigation","Exchange","EXO","Compliance","Logon")

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Canthv0/hawk'

        # A URL to an icon representing this module.
        IconUri = 'https://dexvla.ch.files.1drv.com/y4mGq6B9xSbwzTZ8s2gUov42TsJMlHVKP1SvXpt5tG9a2vfa7xdqFmhYnlNokiZMPD72HFySMAEC9VdMYpA3uV0ZOloHO93MZ81DAtpg5lbOd2h9v1cp1ey5t4syE9SGtbDdL-WggiVoOayWT1dJC4vaw_bRQbfH8GpBTAEZkzFdcCBkOnml4CTl4b0BMu7BRxaE2iaZEv_QbgKFx_eZwsiOg'

        # ReleaseNotes of this module
        ReleaseNotes ='
        1.15.0 - Implemented functions to help with https://docs.microsoft.com/en-us/microsoft-365/security/office-365-security/detect-and-remediate-illicit-consent-grants
        1.15.0 - Minor updates to cmdlet help
        1.15.0 - Updated implementation of Get-HawkTenantConsentGrants to leverage new information
        1.15.0 - Renamed Get-HawkTenantOauthConsentGrants to Get-HawkTenantConsentGrants to reflect new usage
        1.15.0 - Implemented Get-HawkTenantAzureAuditLog to get Consent to application, and Add OAuth2PermissionGrant events
        1.15.0 - Added Get-HawkTenantAzureAuditlog and Get-HawkTenantConsentGrants to Start-HawkTenantInvestigation
        1.14.3 - Fixed issue with missing quote
        1.14.2 - Fixed issue with start-hawktenantinvestigation using the wrong cmdlet
        1.14.1 - Minor updates to logging etc.
        1.14.0 - Update Start-HawkTenantInvestigation and Start-HawkUserInvestigation to better log the cmdlets they are running.
        1.14.0 - Fixed issue with Get-HawkUserMailboxAuditing where it was not searching in 5 day increments like it was supposed to.
        1.14.0 - Updated Global Object code to handle new range input.
        1.14.0 - Added support for setting a date RANGE instead of X days until now.
        1.13.7 - Hawk Global object now stores datetime objects.
        1.13.7 - Cmdlets have been updated to support the change and should continue to work -- please report any issues
        1.13.7 - Hawk should now properly handle US (mm/dd/yyyy) and non-US (dd/mm/yyyy) date formats
        1.13.6 - Fixed null check issue with Search-HawkTenantActivityByIP that was generating an error when no successful logons were found.
        1.13.5 - Update Get IP code to not check Null IP Addresses.  Now puts country as "NULL IP" in those cases. (wiseleaf23)
        1.13.4 - Changed initilization order so that application insights is starting first
        1.13.3 - Fixed a Recursion with the upgrade funcationality.  If 1.13.2 was install a MANUAL update to 1.13.3 will be required. Update-Module Hawk
        1.13.2 - Fixed automatic update logic to properly update when a revision occurs
        1.13.2 - Impoved version reporting to log file
        1.13.1 - Fixed Start-HawkUserInvestigation by removing (s) from a cmdlet name
        1.13.0 - Files output to the user directory now contain _<user> this is to allow excel to open multiple CSV files with the "same" name (Suggestion from Absoblogginlutely)
        '
        # External dependent modules of this module
        # ExternalModuleDependencies = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = 'https://github.com/Canthv0/hawk/tree/master/Help'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
