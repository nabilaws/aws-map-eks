# aws-map-eks
 Amazon EKS Automation - Tags

This solution copy the tags you apply at the Amazon EKS node () creation to the underlying EC2 instances.

![nodetags](https://github.com/nabilaws/aws-map-eks/blob/master/images/node_tags.png?raw=true)


 **CloudFormation with SAM**

Launch the following template to deploy the Serverless Application Model (https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)

https://github.com/nabilaws/aws-map-eks/blob/master/aws-map-eks-cf.yaml

**Resources created:**

Overview:

![overview](https://github.com/nabilaws/aws-map-eks/blob/master/images/sum.png?raw=true)

 - **EventBridge Rule**
 
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
  - **IAM Role**
 
Permissions required to run the Lambda function:

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
  - **AWS Lambda function**

The AWS Lambda function is receiving the AWS Auto Scaling creating made by AWS EKS.
Tags associated to the node group (limited to map-migrated as name) is replicated to Auto Scaling group and already launched EC2 instances, EBS Volumes and ENI.
Function permision is limited to the policy abvove.

**Cost**

As an event driven solution cost is link to the number EKS node you create.
Function memory size is set to minimum (128MB) and timeout to 90seconds.



/!\ This Function is limited to map-migrated tags - feel free to modify for your needs /!\

The AWS Lambda function code is PowerShell/.NET Core.

EventBridge event trigger the AWS Lambda function to modify the AutoScaling group created by Amazon EKS for the compute node. It also apply tags to running EC2 in the node group.
EBS Volumes and ENI are also tagged as the instance.

CloudWatch Log Group is also associated to the function.

Function Code:
https://github.com/nabilaws/aws-map-eks/blob/master/aws-eks-tagging.ps1

Function Package:
https://migrationbootcamp.s3-eu-west-1.amazonaws.com/MAP-EKS-TAG-LAMBDA-v1.2.zip
