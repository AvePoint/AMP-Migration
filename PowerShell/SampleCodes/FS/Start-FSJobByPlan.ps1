$ApiKey = '<ApiKey>'
$BaseUri = '<BaseUri>'
$PlanId = '<PlanId>'

$PlanSettings = New-PlanExecutionObject -MigrationType Incremental

$Response = Start-FSJobByPlan -APIKey $ApiKey -BaseUri $BaseUri -Id $PlanId -PlanSettings $PlanSettings

$Response.Content.Status