<#
Code generated by Microsoft (R) PSSwagger 0.3.0
Changes may cause incorrect behavior and will be lost if the code is regenerated.
#>

<#
.SYNOPSIS
    

.DESCRIPTION
    

.PARAMETER Destination
    

.PARAMETER Source
    

#>
function New-FSMappingContentObject
{
    param(    
        [Parameter(Mandatory = $true)]
        [Microsoft.PowerShell.AMPMigration.v001.Models.SharePointObject]
        $Destination,
    
        [Parameter(Mandatory = $true)]
        [Microsoft.PowerShell.AMPMigration.v001.Models.FSPath]
        $Source
    )
    
    $Object = New-Object -TypeName Microsoft.PowerShell.AMPMigration.v001.Models.FSMappingContent

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
