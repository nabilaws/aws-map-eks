
#Requires -Modules @{ModuleName='AWS.Tools.Common';ModuleVersion='4.0.5.0'}
#Requires -Module AWS.Tools.M   

EKS Create an ASG with an EC2 Launch template 
EKS Publish ASG Hook to SNS 


#1:  Update the ASG and or Launch Template create by EKS (requires )
#2:  Provide a Cloudformation logic for Cluster creation (with instant modification of the ASG and Launch template to include map tags)


$ListMigTasks = (Get-MHMigrationTaskList -Region us-west-2)

foreach ($Servers in $ListMigTasks){
    Get-MHDiscoveredResourceList -MigrationTaskName Servers.MigrationTaskName -ProgressUpdateStream Servers.ProgressUpdateStream -Region us-west-2

}



