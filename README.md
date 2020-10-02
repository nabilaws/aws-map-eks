# aws-map-eks
 Amazon EKS Automation - Tags

This solution copy the tags you apply at the Amazon EKS node () creation to the underlying EC2 instances.

https://github.com/nabilaws/aws-map-eks/blob/master/images/node_tags.png


 **CloudFormation with SAM**

Launch the following template to deploy the Serverless Application Model (https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)

https://github.com/nabilaws/aws-map-eks/blob/master/aws-map-eks-cf.yaml

**Resources created:**
 - EventBridge 
 
 Rule to catch the event of Amazon EKS creating a node group (call to the ec2.autoscaling API)

 
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
  - AWS Lambda function
 ....

/!\ This Function is limited to map-migrated tags - feel free to modify for your needs /!\

The AWS Lambda function itself is written is PowerShell/.NET Core.

CloudTrail event trigger the AWS Lambda function to modify the AutoScaling group created by Amazon EKS for the compute node.

The function will copy the Amazon EKS Cluster Tags (map-migrated) to the underlying EC2 resources created by the autoscaling group.


https://github.com/nabilaws/aws-map-eks/blob/master/aws-eks-tagging.ps1

