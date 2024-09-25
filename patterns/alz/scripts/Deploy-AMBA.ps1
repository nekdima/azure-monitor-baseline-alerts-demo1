$pseudoRootManagementGroup = "alz-demo1"
$location = "swedencentral"

New-AzManagementGroupDeployment -Name "amba-GeneralDeployment" -ManagementGroupId $pseudoRootManagementGroup -Location $location `
  -TemplateUri "https://github.com/nekdima/azure-monitor-baseline-alerts-demo1/blob/main/patterns/alz/alzArm.json" `
  -TemplateParameterFile ".\patterns\alz\alzArm.param.json"
