$ApiKey = '<ApiKey>'
$BaseUri = '<BaseUri>'
$PlanId = '<PlanId>'

$Response = Find-FSJobByPlan -APIKey $ApiKey -BaseUri $BaseUri -Id $PlanId -PageNumber 1 -PageSize 20

$Response.Content.Data