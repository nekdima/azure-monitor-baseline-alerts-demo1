$pseudoRootManagementGroup = "alz-demo1"
$location = "swedencentral"

New-AzManagementGroupDeployment -Name "amba-GeneralDeployment" -ManagementGroupId $pseudoRootManagementGroup -Location $location `
  -TemplateUri "https://raw.githubusercontent.com/nekdima/azure-monitor-baseline-alerts-demo1/main/patterns/alz/alzArm.json" `
  -TemplateParameterFile ".\patterns\alz\alzArm.param.json" `
  -Verbose


# Remediation:
$pseudoRootManagementGroup = "alz-demo1"
$identityManagementGroup = "alz-demo1-identity"
$managementManagementGroup = "alz-demo1-platform"
$connectivityManagementGroup = "alz-demo1-connectivity"
$LZManagementGroup = "alz-demo1-landing-zones"

#Run the following commands to initiate remediation:

.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Notification-Assets
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $pseudoRootManagementGroup -policyName Alerting-ServiceHealth
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $connectivityManagementGroup -policyName Alerting-Connectivity
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $identityManagementGroup -policyName Alerting-Identity
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $managementManagementGroup -policyName Alerting-Management
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-KeyManagement
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-LoadBalancing
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-NetworkChanges
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-HybridVM
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-Storage
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-VM
.\patterns\alz\scripts\Start-AMBARemediation.ps1 -managementGroupName $LZManagementGroup -policyName Alerting-Web
