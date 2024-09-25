$pseudoRootManagementGroup = "alz-demo1"
$location = "swedencentral"

New-AzManagementGroupDeployment -Name "amba-GeneralDeployment" -ManagementGroupId $pseudoRootManagementGroup -Location $location `
  -TemplateUri "https://raw.githubusercontent.com/nekdima/azure-monitor-baseline-alerts-demo1/main/patterns/alz/alzArm.json" `
  -TemplateParameterFile ".\patterns\alz\alzArm.param.json" `
  -Verbose
