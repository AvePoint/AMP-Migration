$ApiKey = '<ApiKey>'
$BaseUri = '<BaseUri>'
$PlanId = '<PlanId>'

$Response = Find-SPJobByPlan -APIKey $ApiKey -BaseUri $BaseUri -Id $PlanId -PageNumber 1 -PageSize 50

$Response.Content.Data