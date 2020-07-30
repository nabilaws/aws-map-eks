#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}
#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.EKS
#1: Tag your EKS Node during deployment
#2: CWE trap with details to moify ASG
#3: Customer need to refresh node group instances or wait for recycle
#Print Event
Write-Host 'Log group name:' $LambdaContext.LogGroupName
try {
   $ClusterName = ($LambdaInput.detail.requestParameters.tags | Where-Object key -eq "eks:cluster-name").Value 
   $NodeName = ($LambdaInput.detail.requestParameters.tags | Where-Object key -eq "eks:nodegroup-name").Value
}
catch {
   Write-Host $($_.exception.message)
}
if($NodeName -eq $ ""){
   Write-Error "Dong! Json not deserialized"
}
else {
   Write-Information -Message "Node and Cluster names from tags"
   Write-Host $NodeName $ClusterName         
}
#Retrieve Cluster Tagging 
$MAPTagValue = (Get-EKSNodegroup -ClusterName $ClusterName -NodegroupName $NodeName).Tags.Values
#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.ResourceType = "auto-scaling-group"
$EKSTags.ResourceId = $LambdaInput.detail.requestParameters.autoScalingGroupName
$EKSTags.Key = "map-migrated"
$EKSTags.Value = $MAPTagValue
$EKSTags.PropagateAtLaunch = $true
#Aplpy Tags to ASG for future launch 
#Too quick for ASG creation - throttle 
Get-ASAutoScalingGroup -AutoScalingGroupName $EKSTags.ResourceId -Verbose
if (condition) {
   
}

$ModASG = Set-ASTag -Tag $EKSTags -Verbose
