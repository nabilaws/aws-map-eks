# aws-map-eks
 EKS Automation for MAP2.0
 
 **CloudFormation with SAM**

Launch the following template:

https://github.com/nabilaws/aws-map-eks/blob/master/aws-map-eks-cf.yaml

*Resources created:*
 - EventBridge rule with the following pattern
 
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
 ....

TBC
