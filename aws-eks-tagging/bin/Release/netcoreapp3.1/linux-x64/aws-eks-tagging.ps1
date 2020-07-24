
#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}

#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.EKS
#1: Tag your EKS Node during deployment
#2: CWE trap with details to moify ASG
#3: Customer need to refresh node group instances or wait for recycle
#Print Event
Write-Host (ConvertTo-Json -InputObject $LambdaInput -Compress -Depth 5)
#Catch the ASG Creation from EKS Node Service
$vJson = ($LambdaInput | ConvertFrom-Json )
#Find EKS Node Name
   $NodeName = ($vJson.detail.requestParameters.tags | Where-Object key -eq eks:nodegroup-name).Value
   $ClusterName = ($vJson.detail.requestParameters.tags | Where-Object key -eq eks:cluster-name).Value
#Retrieve Cluster Tagging 
$MAPTagValue = (Get-EKSNodegroup -ClusterName $ClusterName -NodegroupName $NodeName).Tags.Values
#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.ResourceType = "auto-scaling-group"
$EKSTags.ResourceId = $vJson.detail.requestParameters.autoScalingGroupName
$EKSTags.Key = "map-migrated"
$EKSTags.Value = $MAPTagValue
$EKSTags.PropagateAtLaunch = $true
#Aplpy Tags to ASG for future launch
Set-ASTag -Tag $EKSTags