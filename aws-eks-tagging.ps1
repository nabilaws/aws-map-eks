
#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}

#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.SimpleSystemsManagement
#1:  Update the ASG and or Launch Template create by EKS (requires )
#2:  Provide a Cloudformation logic for Cluster creation (with instant modification of the ASG and Launch template to include map tags)

#Print Event
Write-Host (ConvertTo-Json -InputObject $LambdaInput -Compress -Depth 5)

#var
    $SSMPath = "/MAP2/"

#Retrieve EKS node group name

Write-Host $LambdaInput.requestParameters.tags

#Retrieve Cluster Tagging 
$EKSClusterList = (Get-EKSClusterList)

$damn = (ConvertFrom-Json $LambdaInput | select -ExpandProperty detail | select -ExpandProperty requestParameters | select tags)
$EKSNodeGroupName = ($damn.tags | Where-Object key -eq eks:nodegroup-name).value


# Why not only use EKS Control Plane / Cluster Tagging to determine what tag to apply - Tag your cluster it will tag resources

#Retrieve Cluster/Group IDs

Write-Host $damn.tags


#Retrieve SSM Parameters list

Get-SSMParameter -Name /

foreach ($EKSClusterList  in $collection) {
    $EKSNodeGroup = Get-EKSNodegroupList | Where-Object $EKSNodeGroup -EQ 
    
}

 
#####################################################################
#Create Fake Param hierarchy TO BE DELETE AFTER MH EXPORT AUTOMATION#
#####################################################################
#Write-SSMParameter -Name /MAP2/Application1/Server1 -Value  'd-11111111' -Type String
#Write-SSMParameter -Name /MAP2/Application1/Server2 -Value  'd-11111112' -Type String
#Write-SSMParameter -Name /MAP2/Application1/Server3 -Value  'd-11111113' -Type String
#Write-SSMParameter -Name /MAP2/Application1/Server4 -Value  'd-11111114' -Type String

#Write-SSMParameter -Name /MAP2/Application2/Server1 -Value  'd-21111111' -Type String
#Write-SSMParameter -Name /MAP2/Application2/Server2 -Value  'd-21111112' -Type String
#Write-SSMParameter -Name /MAP2/Application2/Server3 -Value  'd-21111113' -Type String
#Write-SSMParameter -Name /MAP2/Application2/Server4 -Value  'd-21111114' -Type String



#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.Key = (Get-SSMParameter -Name /MAP2/)


$LambdaInput = '{
    "version":"0",
    "id":"10982cb2-23ec-8dfb-4526-30e9b168d098",
    "detail-type":"AWS API Call via CloudTrail",
    "source":"aws.autoscaling",
    "account":"026158001388",
    "time":"2020-06-26T11:55:37Z",
    "region":"eu-west-1",
    "resources":[
 
    
 ],
    "detail":{
       "eventVersion":"1.05",
       "userIdentity":{
          "type":"AssumedRole",
          "principalId":"AROAQMFZDNTWKL6T5ED5E:EKS",
          "arn":"arn:aws:sts::026158001388:assumed-role/AWSServiceRoleForAmazonEKSNodegroup/EKS",
          "accountId":"026158001388",
          "accessKeyId":"ASIAQMFZDNTWERTVR2UL",
          "sessionContext":{
             "sessionIssuer":{
                "type":"Role",
                "principalId":"AROAQMFZDNTWKL6T5ED5E",
                "arn":"arn:aws:iam::026158001388:role/aws-service-role/eks-nodegroup.amazonaws.com/AWSServiceRoleForAmazonEKSNodegroup",
                "accountId":"026158001388",
                "userName":"AWSServiceRoleForAmazonEKSNodegroup"
             
 },
             "webIdFederationData":{
 
             
 },
             "attributes":{
                "mfaAuthenticated":"false",
                "creationDate":"2020-06-26T11:55:35Z"
             
 }
          
 },
          "invokedBy":"eks-nodegroup.amazonaws.com"
       
 },
       "eventTime":"2020-06-26T11:55:37Z",
       "eventSource":"autoscaling.amazonaws.com",
       "eventName":"CreateAutoScalingGroup",
       "awsRegion":"eu-west-1",
       "sourceIPAddress":"eks-nodegroup.amazonaws.com",
       "userAgent":"eks-nodegroup.amazonaws.com",
       "errorCode":"ValidationException",
       "errorMessage":"You must use a valid fully-formed launch template. Value (eks-dab9783d-c8b0-35a1-d12d-04837fc2605e) for parameter iamInstanceProfile.name is invalid. Invalid IAM Instance Profile name",
       "requestParameters":{
          "healthCheckGracePeriod":15,
          "desiredCapacity":2,
          "minSize":2,
          "terminationPolicies":[
             "OldestLaunchTemplate",
             "OldestInstance"
          
 ],
          "tags":[
             {
                "key":"kubernetes.io/cluster/map-eks-cluster",
                "value":"owned"
             
 },
             {
                "key":"k8s.io/cluster-autoscaler/enabled",
                "value":"true"
             
 },
             {
                "key":"k8s.io/cluster-autoscaler/map-eks-cluster",
                "value":"owned"
             
 },
             {
                "key":"eks:cluster-name",
                "value":"map-eks-cluster"
             
 },
             {
                "key":"eks:nodegroup-name",
                "value":"eks-node-map"
             
 }
          
 ],
          "maxSize":2,
          "vPCZoneIdentifier":"subnet-019a4934152bb2c1b,subnet-05015223701611d80,subnet-03e082bef26e65a2e,subnet-0cce189d81c9b634e",
          "autoScalingGroupName":"eks-dab9783d-c8b0-35a1-d12d-04837fc2605e",
          "healthCheckType":"EC2",
          "launchTemplate":{
             "launchTemplateId":"lt-042ff79cbdc0330f4",
             "version":"1"
          
 }
       
 },
       "responseElements":null,
       "requestID":"f999205c-309b-4f64-b083-53bef02f9dc6",
       "eventID":"487f72d2-8426-4da9-8bd5-e8851df52263",
       "eventType":"AwsApiCall"
    
 }
 }'