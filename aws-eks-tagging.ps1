
#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}

#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.SimpleSystemsManagement
#1:  Update the ASG and or Launch Template create by EKS (requires )
#2:  Provide a Cloudformation logic for Cluster creation (with instant modification of the ASG and Launch template to include map tags)

#Print Event
Write-Host (ConvertTo-Json -InputObject $LambdaInput -Compress -Depth 5)

#Retrieve EKS node group name

Write-Host $LambdaInput.requestParameters.tags.

#Retrieve Cluster Tagging 
$EKSClusterList = (Get-EKSClusterList)

$damn = (ConvertFrom-Json $LambdaInput | select -ExpandProperty detail | select -ExpandProperty requestParameters | select tags)
$EKSNodeGroupName = ($damn.tags | Where-Object key -eq eks:nodegroup-name).value

Write-Host $damn.tags

foreach ($EKSClusterList  in $collection) {
    $EKSNodeGroup = Get-EKSNodegroupList | Where-Object $EKSNodeGroup -EQ 
    
}

 

#

#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.Key = (Get-SSMParameter -Name /MAP2/)


