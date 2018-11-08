$ApiKey = '<ApiKey>'
$BaseUri = '<BaseUri>'

$Response = Get-SPPlan -APIKey $ApiKey -BaseUri $BaseUri

$Response.Content