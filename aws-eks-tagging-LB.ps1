#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.1.2.0'}
#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.EKS
#1: Tag your EKS Cluster with "map-migrated" and associated value to retrieve it on your EC2 resources

$TagsList = ($LambdaInput.detail.requestParameters.tags)

try {
   $ClusterName = ($LambdaInput.detail.requestParameters.tags | Where-Object key -eq "eks:cluster-name").Value 
   $NodeName = ($LambdaInput.detail.requestParameters.tags | Where-Object key -eq "eks:nodegroup-name").Value
}
catch {
   Write-Host $($_.exception.message)
}
if($NodeName -eq ""){
   Write-Error "Dong! Json not deserialized"
}
else {
   Write-Information -Message "Node and Cluster names from tags"
   Write-Host $NodeName $ClusterName         
}
#Retrieve node tagging 
$MAPTagValueList = (Get-EKSNodegroup -ClusterName $ClusterName -NodegroupName $NodeName).Tags
$MAPTagValue = $MAPTagValueList.GetEnumerator() | Where-Object Key -eq "map-migrated"

#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.ResourceType = "auto-scaling-group"
$EKSTags.ResourceId = $LambdaInput.detail.requestParameters.autoScalingGroupName
$EKSTags.Key = "map-migrated"
$EKSTags.Value = $MAPTagValue.Value
$EKSTags.PropagateAtLaunch = $true
#Apply tags to ASG for future launch
Write-Host "Tempo for 5 seconds"
Start-Sleep -Seconds 5 
try{
   $eksASG = (Get-ASAutoScalingGroup -AutoScalingGroupName $EKSTags.ResourceId -Verbose -ErrorAction Continue)
   Write-Host $eksASG.Instances
}
Catch{
   Write-Host $($_.exception.message)
}
Write-Host "Applying" $EKSTags.Key "with value" $EKSTags.Value "to" $EKSTags.ResourceId
try {
   Set-ASTag -Tag $EKSTags -Verbose -ErrorAction Continue
}
catch {
   Write-Error $($_.exception.message)
   Write-Error "Error applying tags to auto scaling group review previous error messages"
}
#Tagging EC2 resources already launched
Get-EC2Instance
$EC2inASG = $eksASG.Instances.InstanceId
$EC2Tag = New-Object Amazon.EC2.Model.Tag
$EC2Tag.Key = "map-migrated"
$EC2Tag.Value = $EKSTags.Value
Foreach ($EC2List in $EC2inASG) 
{
   Write-Host "Tagging" $EC2List
   New-EC2Tag -Resource $EC2List -Tag $EC2Tag
   #EBS inside EC2 loop (should be unique)
   $EC2VolumeList = (Get-EC2Volume -Filter @{ Name="attachment.instance-id"; Values= $EC2List}).VolumeId
   Write-Host "Tagging" $EC2VolumeList
   New-EC2Tag -Resource $EC2VolumeList -Tag $EC2Tag
   $ENIList = Get-EC2NetworkInterface -Filter @{ Name="attachment.instance-id"; Values= $EC2inASG}
   #ELB inside EC2 loop
   $ELBList = (Get-ELBLoadBalancer -Select LoadBalancerDescriptions.Instances.InstanceId)
   if ($EC2inASG )

   }
   #ENI inside EC2 loop
   foreach ($ENI in $ENIList.NetworkInterfaceId)
   {
      Write-Host "Tagging" $ENI
      New-EC2Tag -Resource $ENI -Tag $EC2Tag
   }

}

