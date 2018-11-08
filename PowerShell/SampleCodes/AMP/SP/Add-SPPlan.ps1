$ApiKey = '<ApiKey>'
$BaseUri = '<BaseUri>'

$SourceAccount = New-AccountObject -Username '<AccountName>' -Password '<AccountPassword>' -AppProfile '<AppProfileName?>'
$DestinationAccount = New-AccountObject -Username '<AccountName>' -Password '<AccountPassword>' -AppProfile '<AppProfileName?>'

$Source1 = New-SharePointObject -Level SiteCollection -Url '<SiteCollectionUrl>'
$Destination1 = New-SharePointObject -Level SiteCollection -Url '<SiteCollectionUrl>'

$Source2 = New-SharePointObject -Level Site -Url '<SiteUrl>'
$Destination2 = New-SharePointObject -Level Site -Url '<SiteUrl>'

$MappingContent1 = New-SharePointMappingContentObject -Source $Source1 -Destination $Destination1 -Method Combine

$MappingContent2 = New-SharePointMappingContentObject -Source $Source2 -Destination $Destination2 -Method Combine

$Mappings = New-SharePointMappingObject -Contents @($MappingContent1, $MappingContent2) -DestinationAccount $DestinationAccount -SourceAccount $SourceAccount

$Schedule = New-ScheduleObject -StartTime '<StartTime>' -IntervalType OnlyOnce

$Settings = New-SharePointPlanSettingsObject -Name '<PlanName>' -PolicyId '<PolicyId?>' -MigrationMode HighSpeed -Schedule $Schedule

$Plan = New-SharePointPlanObject -Settings $Settings -Mappings $Mappings

$Response = Add-SPPlan -APIKey $ApiKey -BaseUri $BaseUri -PlanSettings $Plan

$Response.Content