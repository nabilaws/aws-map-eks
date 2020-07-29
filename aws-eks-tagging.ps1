#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}
#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.EKS
#1: Tag your EKS Node during deployment
#2: CWE trap with details to moify ASG
#3: Customer need to refresh node group instances or wait for recycle
#Print Event
Write-Host $LambdaContext
Write-Host $LambdaInput.detail
$vJson2 = (ConvertFrom-Json -InputObject $LambdaInput -Verbose)
$jsonTags = ($vJson2.detail.requestParameters.tags)
$eksASG = ($vJson2.detail.requestParameters.autoScalingGroupName)
Write-Information -MessageData "vjson2 print"
Write-Host $jsonTags.Value
#Catch the ASG Creation from EKS Node Service
#$vJson = ($vJson | ConvertTo-Json )
#Find EKS Node Name
try {
   $ClusterName = ($jsonTags | Where-Object key -eq "eks:cluster-name" ).Value
   $NodeName = ($jsonTags | Where-Object key -eq "eks:nodegroup-name" ).Value
}
catch {
   Write-Host $($_.exception.message)
   Break
}
Write-Information -Message "Node and Cluster names from tags"
Write-Host $NodeName $ClusterName   
#Retrieve Cluster Tagging 
$MAPTagValue = (Get-EKSNodegroup -ClusterName $ClusterName -NodegroupName $NodeName).Tags.Values
#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.ResourceType = "auto-scaling-group"
$EKSTags.ResourceId = $eksASG
$EKSTags.Key = "map-migrated"
$EKSTags.Value = $MAPTagValue
$EKSTags.PropagateAtLaunch = $true
#Aplpy Tags to ASG for future launch
Set-ASTag -Tag $EKSTags 