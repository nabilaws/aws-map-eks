#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.6.0'}
#Requires -Module AWS.Tools.EC2, AWS.Tools.AutoScaling, AWS.Tools.EKS
#1: Tag your EKS Node during deployment
#2: CWE trap with details to moify ASG
#3: Customer need to refresh node group instances or wait for recycle
#Print Event
#Write-Host 'Log group name:' $LambdaContext.LogGroupName
#Local TU 

$LambdaInput = '{
    "version":"0",
    "id":"5cc6e36b-d4eb-bd92-4bf6-1d806216073c",
    "detail-type":"AWS API Call via CloudTrail",
    "source":"aws.autoscaling",
    "account":"026158001388",
    "time":"2020-07-30T15:13:10Z",
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
          "accessKeyId":"ASIAQMFZDNTWJOG332JO",
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
                "creationDate":"2020-07-30T15:13:09Z"
             
 }
          
 },
          "invokedBy":"eks-nodegroup.amazonaws.com"
       
 },
       "eventTime":"2020-07-30T15:13:10Z",
       "eventSource":"autoscaling.amazonaws.com",
       "eventName":"CreateAutoScalingGroup",
       "awsRegion":"eu-west-1",
       "sourceIPAddress":"eks-nodegroup.amazonaws.com",
       "userAgent":"eks-nodegroup.amazonaws.com",
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
                "key":"kubernetes.io/cluster/eks-cluster1",
                "value":"owned"
             
 },
             {
                "key":"k8s.io/cluster-autoscaler/enabled",
                "value":"true"
             
 },
             {
                "key":"k8s.io/cluster-autoscaler/eks-cluster1",
                "value":"owned"
             
 },
             {
                "key":"eks:cluster-name",
                "value":"eks-cluster1"
             
 },
             {
                "key":"eks:nodegroup-name",
                "value":"node1"
             
 }
          
 ],
          "maxSize":2,
          "vPCZoneIdentifier":"subnet-019a4934152bb2c1b,subnet-05015223701611d80,subnet-03e082bef26e65a2e,subnet-0cce189d81c9b634e",
          "autoScalingGroupName":"eks-e6b9d024-1742-daf1-664e-b6de9bd9074b",
          "healthCheckType":"EC2",
          "launchTemplate":{
             "launchTemplateId":"lt-0c2d2c87b6de105f8",
             "version":"1"
          
 }
       
 },
       "responseElements":null,
       "requestID":"765599e4-24d2-4c69-ba92-7984a9ef14a7",
       "eventID":"439c2e56-4ef4-40bd-9711-d2645a949238",
       "eventType":"AwsApiCall"
    
 }
 }'
$LambdaInput2 = (ConvertFrom-Json $LambdaInput)
try {
   $ClusterName = ($LambdaInput2.detail.requestParameters.tags | Where-Object key -eq "eks:cluster-name").Value 
   $NodeName = ($LambdaInput2.detail.requestParameters.tags | Where-Object key -eq "eks:nodegroup-name").Value
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
#Retrieve Cluster Tagging

$MAPTagValue = (Get-EKSNodegroup -ClusterName $ClusterName -NodegroupName $NodeName).Tags.Values
#Prepare AS Tags
$EKSTags = (New-Object Amazon.AutoScaling.Model.Tag)
$EKSTags.ResourceType = "auto-scaling-group"
$EKSTags.ResourceId = $LambdaInput2.detail.requestParameters.autoScalingGroupName
$EKSTags.Key = "map-migrated"
$EKSTags.Value = $MAPTagValue
$EKSTags.PropagateAtLaunch = $true
#Aplpy Tags to ASG for future launch 
#Too quick for ASG creation - throttle 
$eksASG - (Get-ASAutoScalingGroup -AutoScalingGroupName $EKSTags.ResourceId -Verbose)
if () {
   
}

$ModASG = Set-ASTag -Tag $EKSTags -Verbose
