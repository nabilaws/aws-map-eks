# aws-map-eks
 EKS Automation for MAP2.0
 
 **CloudFormation with SAM**

Launch the following template to deploy the Serverless Application Model (https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)

https://github.com/nabilaws/aws-map-eks/blob/master/aws-map-eks-cf.yaml

*Resources created:*
 - EventBridge rule to catch the event of Amazon EKS creating a node group (call to the ec2.autoscaling API)
 
 ```yaml
      EventPattern:
        source:
          - "aws.autoscaling"
        detail-type:
          - "AWS API Call via CloudTrail"
        detail:
          eventSource:
            - "autoscaling.amazonaws.com"
          eventName:
            - "CreateAutoScalingGroup"
          userIdentity:
            invokedBy:
              - "eks-nodegroup.amazonaws.com"

```
  - IAM Role 

Permissions required to run the function:

```yaml

          - Sid: ASGPolicy
            Effect: Allow
            Action:
            - autoscaling:CreateOrUpdateTags
            - autoscaling:DescribeAutoScalingGroups
            - autoscaling:DescribeAutoScalingInstances
            - autoscaling:DescribeTags
            - eks:Describe*
            - eks:List*
            - ec2:Describe*
            - ec2:CreateTags
            Resource: "*"

```
 ....

The AWS Lambda function itself is written is PowerShell/.NET Core 
https://github.com/nabilaws/aws-map-eks/blob/master/aws-eks-tagging.ps1

