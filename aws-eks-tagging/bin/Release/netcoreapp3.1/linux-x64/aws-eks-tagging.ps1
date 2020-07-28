#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}
#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.EKS
#1: Tag your EKS Node during deployment
#2: CWE trap with details to moify ASG
#3: Customer need to refresh node group instances or wait for recycle
#Print Event
Write-Information -MessageData LambdaInput
Write-Host (ConvertTo-Json -InputObject $LambdaInput -Compress -Depth 5)
Write-Information -MessageData "ConvertFrom Json"
ConvertFrom-Json -InputObject $LambdaInput.detail

$vJson = $LambdaInput.detail.requestParameters.tags.value
Write-Information -MessageData "Print vjson tag value"
Write-Host $vJson -Verbose



$vJson2 = ConvertTo-Json -InputObject $LambdaInput -Compress -Depth 5
$vJson2.detail.requestParameters.tags.value
Write-Information -MessageData "vjson2 print"
Write-Host $vJson2 -Verbose

#Catch the ASG Creation from EKS Node Service

#$vJson = ($vJson | ConvertTo-Json )
#Find EKS Node Name
Write-Host $vJson.detail
Write-Host $vJson.detail.requestParameters.tags.value
   $NodeName = ($vJson | Where-Object key -eq eks:nodegroup-name).Value
   $ClusterName = ($vJson | Where-Object key -eq eks:cluster-name).Value
Write-Host $NodeName $ClusterName   
#Retrieve Cluster Tagging 
Get-EKSNodegroupList -ClusterName $ClusterName
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