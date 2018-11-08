$ApiKey = '<ApiKey>'
$BaseUri = '<BaseUri>'

$Response = Get-FSPlan -APIKey $ApiKey -BaseUri $BaseUri

$Response.Content