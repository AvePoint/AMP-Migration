<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER IntervalType
    {AvePoint.Migration.Api.Models.ScheduleInterval}

.PARAMETER Interval
    The interval of the schedule, if interval type is not OnlyOnce, this field is required

.PARAMETER Days
    {System.DayOfWeek}
            Possible values : Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday

.PARAMETER OccurrencesValue
    Stop the recurrence after a specified number of occurrence, 
if schedule end type is Occurrences, this field is required.

.PARAMETER EndType
    {AvePoint.Migration.Api.Models.ScheduleEndType}

.PARAMETER StartTime
    The date and time when the schedule will be triggered.	
Should be w3 format, eg 2018-11-01T00:00:00Z

.PARAMETER EndTime
    The time to end the recurrence
If scedule end type is Time, this field is required.
Should be w3 format, eg 2018-11-01T00:00:00Z

#>
function New-ScheduleObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [ValidateSet('OnlyOnce', 'Hourly', 'Daily', 'Weekly')]
        [string]
        $IntervalType,
    
        [Parameter(Mandatory = $false)]
        [int32]
        $Interval,
    
        [Parameter(Mandatory = $false)]
        [string[]]
        $Days,
    
        [Parameter(Mandatory = $false)]
        [int32]
        $OccurrencesValue,
    
        [Parameter(Mandatory = $false)]
        [ValidateSet('Occurrences', 'Time')]
        [string]
        $EndType,
    
        [Parameter(Mandatory = $true)]
        [string]
        $StartTime,
    
        [Parameter(Mandatory = $false)]
        [string]
        $EndTime
    )
    
    $Object = New-Object -TypeName Microsoft.PowerShell.AMPMigration.v001.Models.ScheduleModel

    $PSBoundParameters.GetEnumerator() | ForEach-Object { 
        if(Get-Member -InputObject $Object -Name $_.Key -MemberType Property)
        {
            $Object.$($_.Key) = $_.Value
        }
    }

    if(Get-Member -InputObject $Object -Name Validate -MemberType Method)
    {
        $Object.Validate()
    }

    return $Object
}
