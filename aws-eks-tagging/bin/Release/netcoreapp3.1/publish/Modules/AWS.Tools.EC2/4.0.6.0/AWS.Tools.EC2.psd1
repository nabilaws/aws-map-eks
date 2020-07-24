#
# Module manifest for module 'AWS.Tools.EC2'
#

@{
    # Script module or binary module file associated with this manifest
    RootModule = 'AWS.Tools.EC2.dll'

    # Supported PSEditions
    CompatiblePSEditions = @('Core', 'Desktop')

    # Version number of this module.
    ModuleVersion = '4.0.6.0'

    # ID used to uniquely identify this module
    GUID = 'beb2445c-fd90-4fda-adf1-f8c955ce16dc'

    # Author of this module
    Author = 'Amazon.com, Inc'

    # Company or vendor of this module
    CompanyName = 'Amazon.com, Inc'

    # Copyright statement for this module
    Copyright = 'Copyright 2012-2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.'

    # Description of the functionality provided by this module
    Description = 'The EC2 module of AWS Tools for PowerShell lets developers and administrators manage Amazon Elastic Compute Cloud (EC2) from the PowerShell scripting environment. In order to manage each AWS service, install the corresponding module (e.g. AWS.Tools.EC2, AWS.Tools.S3...).
The module AWS.Tools.Installer (https://www.powershellgallery.com/packages/AWS.Tools.Installer/) makes it easier to install, update and uninstall the AWS.Tools modules.
This version of AWS Tools for PowerShell is compatible with Windows PowerShell 5.1+ and PowerShell Core 6+ on Windows, Linux and macOS. When running on Windows PowerShell, .NET Framework 4.7.2 or newer is required. Alternative modules AWSPowerShell.NetCore and AWSPowerShell, provide support for all AWS services from a single module and also support older versions of Windows PowerShell and .NET Framework.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    PowerShellHostVersion = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = '4.7.2'

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules = @(
        @{
            ModuleName = 'AWS.Tools.Common';
            RequiredVersion = '4.0.6.0';
            Guid = 'e5b05bf3-9eee-47b2-81f2-41ddc0501b86' }
    )

    # Assemblies that must be loaded prior to importing this module.
    RequiredAssemblies = @(
        'AWSSDK.EC2.dll'
    )

    # Script files (.ps1) that are run in the caller's environment prior to importing this module
    ScriptsToProcess = @(

    )

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @(

    )

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @(
        'AWS.Tools.EC2.Format.ps1xml'
    )

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules = @(
        'AWS.Tools.EC2.Completers.psm1',
        'AWS.Tools.EC2.Aliases.psm1'
    )

    # Functions to export from this module
    FunctionsToExport = ''

    # Cmdlets to export from this module
    CmdletsToExport = @(
        'Add-EC2CapacityReservation', 
        'Add-EC2ClassicLinkVpc', 
        'Add-EC2InternetGateway', 
        'Add-EC2NetworkInterface', 
        'Add-EC2SecurityGroupToClientVpnTargetNetwork', 
        'Add-EC2Volume', 
        'Add-EC2VpnGateway', 
        'Approve-EC2EndpointConnection', 
        'Approve-EC2ReservedInstancesExchangeQuote', 
        'Approve-EC2TransitGatewayPeeringAttachment', 
        'Approve-EC2TransitGatewayVpcAttachment', 
        'Approve-EC2VpcPeeringConnection', 
        'Confirm-EC2ProductInstance', 
        'Copy-EC2FpgaImage', 
        'Copy-EC2Image', 
        'Copy-EC2Snapshot', 
        'Deny-EC2EndpointConnection', 
        'Deny-EC2TransitGatewayPeeringAttachment', 
        'Deny-EC2TransitGatewayVpcAttachment', 
        'Deny-EC2VpcPeeringConnection', 
        'Disable-EC2EbsEncryptionByDefault', 
        'Disable-EC2FastSnapshotRestore', 
        'Disable-EC2TransitGatewayRouteTablePropagation', 
        'Disable-EC2VgwRoutePropagation', 
        'Disable-EC2VpcClassicLink', 
        'Disable-EC2VpcClassicLinkDnsSupport', 
        'Dismount-EC2ClassicLinkVpc', 
        'Dismount-EC2InternetGateway', 
        'Dismount-EC2NetworkInterface', 
        'Dismount-EC2Volume', 
        'Dismount-EC2VpnGateway', 
        'Edit-EC2AvailabilityZoneGroup', 
        'Edit-EC2CapacityReservation', 
        'Edit-EC2ClientVpnEndpoint', 
        'Edit-EC2DefaultCreditSpecification', 
        'Edit-EC2EbsDefaultKmsKeyId', 
        'Edit-EC2EndpointServicePermission', 
        'Edit-EC2Fleet', 
        'Edit-EC2FpgaImageAttribute', 
        'Edit-EC2Host', 
        'Edit-EC2IdentityIdFormat', 
        'Edit-EC2IdFormat', 
        'Edit-EC2ImageAttribute', 
        'Edit-EC2InstanceAttribute', 
        'Edit-EC2InstanceCapacityReservationAttribute', 
        'Edit-EC2InstanceCreditSpecification', 
        'Edit-EC2InstanceEventStartTime', 
        'Edit-EC2InstanceMetadataOption', 
        'Edit-EC2InstancePlacement', 
        'Edit-EC2LaunchTemplate', 
        'Edit-EC2NetworkInterfaceAttribute', 
        'Edit-EC2ReservedInstance', 
        'Edit-EC2SnapshotAttribute', 
        'Edit-EC2SpotFleetRequest', 
        'Edit-EC2SubnetAttribute', 
        'Edit-EC2TrafficMirrorFilterNetworkService', 
        'Edit-EC2TrafficMirrorFilterRule', 
        'Edit-EC2TrafficMirrorSession', 
        'Edit-EC2TransitGatewayVpcAttachment', 
        'Edit-EC2Volume', 
        'Edit-EC2VolumeAttribute', 
        'Edit-EC2VpcAttribute', 
        'Edit-EC2VpcEndpoint', 
        'Edit-EC2VpcEndpointConnectionNotification', 
        'Edit-EC2VpcEndpointServiceConfiguration', 
        'Edit-EC2VpcPeeringConnectionOption', 
        'Edit-EC2VpcTenancy', 
        'Edit-EC2VpnConnection', 
        'Edit-EC2VpnTunnelCertificate', 
        'Edit-EC2VpnTunnelOption', 
        'Enable-EC2EbsEncryptionByDefault', 
        'Enable-EC2FastSnapshotRestore', 
        'Enable-EC2TransitGatewayRouteTablePropagation', 
        'Enable-EC2VgwRoutePropagation', 
        'Enable-EC2VolumeIO', 
        'Enable-EC2VpcClassicLink', 
        'Enable-EC2VpcClassicLinkDnsSupport', 
        'Export-EC2ClientVpnClientCertificateRevocationList', 
        'Export-EC2ClientVpnClientConfiguration', 
        'Export-EC2Image', 
        'Export-EC2TransitGatewayRoute', 
        'Get-EC2AccountAttribute', 
        'Get-EC2Address', 
        'Get-EC2AggregateIdFormat', 
        'Get-EC2AssociatedIpv6PoolCidr', 
        'Get-EC2AvailabilityZone', 
        'Get-EC2BundleTask', 
        'Get-EC2ByoipCidr', 
        'Get-EC2CapacityReservation', 
        'Get-EC2CapacityReservationUsage', 
        'Get-EC2ClassicLinkInstance', 
        'Get-EC2ClientVpnAuthorizationRule', 
        'Get-EC2ClientVpnConnection', 
        'Get-EC2ClientVpnEndpoint', 
        'Get-EC2ClientVpnRoute', 
        'Get-EC2ClientVpnTargetNetwork', 
        'Get-EC2CoipPool', 
        'Get-EC2CoipPoolUsage', 
        'Get-EC2ConsoleOutput', 
        'Get-EC2ConsoleScreenshot', 
        'Get-EC2CreditSpecification', 
        'Get-EC2CustomerGateway', 
        'Get-EC2DefaultCreditSpecification', 
        'Get-EC2DhcpOption', 
        'Get-EC2EbsDefaultKmsKeyId', 
        'Get-EC2EbsEncryptionByDefault', 
        'Get-EC2EgressOnlyInternetGatewayList', 
        'Get-EC2ElasticGpu', 
        'Get-EC2EndpointConnection', 
        'Get-EC2EndpointConnectionNotification', 
        'Get-EC2EndpointServiceConfiguration', 
        'Get-EC2EndpointServicePermission', 
        'Get-EC2ExportImageTask', 
        'Get-EC2ExportTask', 
        'Get-EC2FastSnapshotRestore', 
        'Get-EC2FleetHistory', 
        'Get-EC2FleetInstanceList', 
        'Get-EC2FleetList', 
        'Get-EC2FlowLog', 
        'Get-EC2FpgaImage', 
        'Get-EC2FpgaImageAttribute', 
        'Get-EC2Host', 
        'Get-EC2HostReservation', 
        'Get-EC2HostReservationOffering', 
        'Get-EC2HostReservationPurchasePreview', 
        'Get-EC2IamInstanceProfileAssociation', 
        'Get-EC2IdentityIdFormat', 
        'Get-EC2IdFormat', 
        'Get-EC2Image', 
        'Get-EC2ImageAttribute', 
        'Get-EC2ImageByName', 
        'Get-EC2ImportImageTask', 
        'Get-EC2ImportSnapshotTask', 
        'Get-EC2Instance', 
        'Get-EC2InstanceAttribute', 
        'Get-EC2InstanceEventNotificationAttribute', 
        'Get-EC2InstanceMetadata', 
        'Get-EC2InstanceStatus', 
        'Get-EC2InstanceType', 
        'Get-EC2InstanceTypeOffering', 
        'Get-EC2InternetGateway', 
        'Get-EC2Ipv6Pool', 
        'Get-EC2KeyPair', 
        'Get-EC2LaunchTemplateData', 
        'Get-EC2LocalGateway', 
        'Get-EC2LocalGatewayRouteTable', 
        'Get-EC2LocalGatewayRouteTableVirtualInterfaceGroupAssociation', 
        'Get-EC2LocalGatewayRouteTableVpcAssociation', 
        'Get-EC2LocalGatewayVirtualInterface', 
        'Get-EC2LocalGatewayVirtualInterfaceGroup', 
        'Get-EC2MovingAddress', 
        'Get-EC2NatGateway', 
        'Get-EC2NetworkAcl', 
        'Get-EC2NetworkInterface', 
        'Get-EC2NetworkInterfaceAttribute', 
        'Get-EC2NetworkInterfacePermission', 
        'Get-EC2PasswordData', 
        'Get-EC2PlacementGroup', 
        'Get-EC2PrefixList', 
        'Get-EC2PrincipalIdFormat', 
        'Get-EC2PublicIpv4Pool', 
        'Get-EC2Region', 
        'Get-EC2ReservedInstance', 
        'Get-EC2ReservedInstancesExchangeQuote', 
        'Get-EC2ReservedInstancesListing', 
        'Get-EC2ReservedInstancesModification', 
        'Get-EC2ReservedInstancesOffering', 
        'Get-EC2RouteTable', 
        'Get-EC2ScheduledInstance', 
        'Get-EC2ScheduledInstanceAvailability', 
        'Get-EC2SecurityGroup', 
        'Get-EC2SecurityGroupReference', 
        'Get-EC2Snapshot', 
        'Get-EC2SnapshotAttribute', 
        'Get-EC2SpotDatafeedSubscription', 
        'Get-EC2SpotFleetInstance', 
        'Get-EC2SpotFleetRequest', 
        'Get-EC2SpotFleetRequestHistory', 
        'Get-EC2SpotInstanceRequest', 
        'Get-EC2SpotPriceHistory', 
        'Get-EC2StaleSecurityGroup', 
        'Get-EC2Subnet', 
        'Get-EC2Tag', 
        'Get-EC2Template', 
        'Get-EC2TemplateVersion', 
        'Get-EC2TrafficMirrorFilter', 
        'Get-EC2TrafficMirrorSession', 
        'Get-EC2TrafficMirrorTarget', 
        'Get-EC2TransitGateway', 
        'Get-EC2TransitGatewayAttachment', 
        'Get-EC2TransitGatewayAttachmentPropagation', 
        'Get-EC2TransitGatewayMulticastDomain', 
        'Get-EC2TransitGatewayMulticastDomainAssociation', 
        'Get-EC2TransitGatewayPeeringAttachment', 
        'Get-EC2TransitGatewayRouteTable', 
        'Get-EC2TransitGatewayRouteTableAssociation', 
        'Get-EC2TransitGatewayRouteTablePropagation', 
        'Get-EC2TransitGatewayVpcAttachment', 
        'Get-EC2Volume', 
        'Get-EC2VolumeAttribute', 
        'Get-EC2VolumeModification', 
        'Get-EC2VolumeStatus', 
        'Get-EC2Vpc', 
        'Get-EC2VpcAttribute', 
        'Get-EC2VpcClassicLink', 
        'Get-EC2VpcClassicLinkDnsSupport', 
        'Get-EC2VpcEndpoint', 
        'Get-EC2VpcEndpointService', 
        'Get-EC2VpcPeeringConnection', 
        'Get-EC2VpnConnection', 
        'Get-EC2VpnGateway', 
        'Grant-EC2ClientVpnIngress', 
        'Grant-EC2SecurityGroupEgress', 
        'Grant-EC2SecurityGroupIngress', 
        'Import-EC2ClientVpnClientCertificateRevocationList', 
        'Import-EC2Image', 
        'Import-EC2KeyPair', 
        'Import-EC2Snapshot', 
        'Move-EC2AddressToVpc', 
        'New-EC2Address', 
        'New-EC2ClientVpnEndpoint', 
        'New-EC2ClientVpnRoute', 
        'New-EC2CustomerGateway', 
        'New-EC2DefaultSubnet', 
        'New-EC2DefaultVpc', 
        'New-EC2DhcpOption', 
        'New-EC2EgressOnlyInternetGateway', 
        'New-EC2Fleet', 
        'New-EC2FlowLog', 
        'New-EC2FpgaImage', 
        'New-EC2Host', 
        'New-EC2HostReservation', 
        'New-EC2Image', 
        'New-EC2Instance', 
        'New-EC2InstanceBundle', 
        'New-EC2InstanceExportTask', 
        'New-EC2InternetGateway', 
        'New-EC2KeyPair', 
        'New-EC2LaunchTemplate', 
        'New-EC2LaunchTemplateVersion', 
        'New-EC2LocalGatewayRoute', 
        'New-EC2LocalGatewayRouteTableVpcAssociation', 
        'New-EC2NatGateway', 
        'New-EC2NetworkAcl', 
        'New-EC2NetworkAclEntry', 
        'New-EC2NetworkInterface', 
        'New-EC2NetworkInterfacePermission', 
        'New-EC2PlacementGroup', 
        'New-EC2ReservedInstance', 
        'New-EC2ReservedInstancesListing', 
        'New-EC2Route', 
        'New-EC2RouteTable', 
        'New-EC2ScheduledInstance', 
        'New-EC2ScheduledInstancePurchase', 
        'New-EC2SecurityGroup', 
        'New-EC2Snapshot', 
        'New-EC2SnapshotBatch', 
        'New-EC2SpotDatafeedSubscription', 
        'New-EC2Subnet', 
        'New-EC2Tag', 
        'New-EC2TrafficMirrorFilter', 
        'New-EC2TrafficMirrorFilterRule', 
        'New-EC2TrafficMirrorSession', 
        'New-EC2TrafficMirrorTarget', 
        'New-EC2TransitGateway', 
        'New-EC2TransitGatewayMulticastDomain', 
        'New-EC2TransitGatewayPeeringAttachment', 
        'New-EC2TransitGatewayRoute', 
        'New-EC2TransitGatewayRouteTable', 
        'New-EC2TransitGatewayVpcAttachment', 
        'New-EC2Volume', 
        'New-EC2Vpc', 
        'New-EC2VpcEndpoint', 
        'New-EC2VpcEndpointConnectionNotification', 
        'New-EC2VpcEndpointServiceConfiguration', 
        'New-EC2VpcPeeringConnection', 
        'New-EC2VpnConnection', 
        'New-EC2VpnConnectionRoute', 
        'New-EC2VpnGateway', 
        'Register-EC2Address', 
        'Register-EC2ByoipCidr', 
        'Register-EC2ClientVpnTargetNetwork', 
        'Register-EC2DhcpOption', 
        'Register-EC2IamInstanceProfile', 
        'Register-EC2Image', 
        'Register-EC2InstanceEventNotificationAttribute', 
        'Register-EC2Ipv6AddressList', 
        'Register-EC2PrivateIpAddress', 
        'Register-EC2RouteTable', 
        'Register-EC2SubnetCidrBlock', 
        'Register-EC2TransitGatewayMulticastDomain', 
        'Register-EC2TransitGatewayMulticastGroupMember', 
        'Register-EC2TransitGatewayMulticastGroupSource', 
        'Register-EC2TransitGatewayRouteTable', 
        'Register-EC2VpcCidrBlock', 
        'Remove-EC2Address', 
        'Remove-EC2CapacityReservation', 
        'Remove-EC2ClientVpnEndpoint', 
        'Remove-EC2ClientVpnRoute', 
        'Remove-EC2CustomerGateway', 
        'Remove-EC2DhcpOption', 
        'Remove-EC2EgressOnlyInternetGateway', 
        'Remove-EC2EndpointConnectionNotification', 
        'Remove-EC2EndpointServiceConfiguration', 
        'Remove-EC2Fleet', 
        'Remove-EC2FlowLog', 
        'Remove-EC2FpgaImage', 
        'Remove-EC2Host', 
        'Remove-EC2Instance', 
        'Remove-EC2InternetGateway', 
        'Remove-EC2KeyPair', 
        'Remove-EC2LaunchTemplate', 
        'Remove-EC2LocalGatewayRoute', 
        'Remove-EC2LocalGatewayRouteTableVpcAssociation', 
        'Remove-EC2NatGateway', 
        'Remove-EC2NetworkAcl', 
        'Remove-EC2NetworkAclEntry', 
        'Remove-EC2NetworkInterface', 
        'Remove-EC2NetworkInterfacePermission', 
        'Remove-EC2PlacementGroup', 
        'Remove-EC2QueuedReservedInstance', 
        'Remove-EC2Route', 
        'Remove-EC2RouteTable', 
        'Remove-EC2SecurityGroup', 
        'Remove-EC2Snapshot', 
        'Remove-EC2SpotDatafeedSubscription', 
        'Remove-EC2Subnet', 
        'Remove-EC2Tag', 
        'Remove-EC2TemplateVersion', 
        'Remove-EC2TrafficMirrorFilter', 
        'Remove-EC2TrafficMirrorFilterRule', 
        'Remove-EC2TrafficMirrorSession', 
        'Remove-EC2TrafficMirrorTarget', 
        'Remove-EC2TransitGateway', 
        'Remove-EC2TransitGatewayMulticastDomain', 
        'Remove-EC2TransitGatewayPeeringAttachment', 
        'Remove-EC2TransitGatewayRoute', 
        'Remove-EC2TransitGatewayRouteTable', 
        'Remove-EC2TransitGatewayVpcAttachment', 
        'Remove-EC2Volume', 
        'Remove-EC2Vpc', 
        'Remove-EC2VpcEndpoint', 
        'Remove-EC2VpcPeeringConnection', 
        'Remove-EC2VpnConnection', 
        'Remove-EC2VpnConnectionRoute', 
        'Remove-EC2VpnGateway', 
        'Request-EC2SpotFleet', 
        'Request-EC2SpotInstance', 
        'Reset-EC2EbsDefaultKmsKeyId', 
        'Reset-EC2FpgaImageAttribute', 
        'Reset-EC2ImageAttribute', 
        'Reset-EC2InstanceAttribute', 
        'Reset-EC2NetworkInterfaceAttribute', 
        'Reset-EC2SnapshotAttribute', 
        'Restart-EC2Instance', 
        'Restore-EC2AddressToClassic', 
        'Revoke-EC2ClientVpnIngress', 
        'Revoke-EC2SecurityGroupEgress', 
        'Revoke-EC2SecurityGroupIngress', 
        'Search-EC2LocalGatewayRoute', 
        'Search-EC2TransitGatewayMulticastGroup', 
        'Search-EC2TransitGatewayRoute', 
        'Send-EC2DiagnosticInterrupt', 
        'Send-EC2InstanceStatus', 
        'Set-EC2IamInstanceProfileAssociation', 
        'Set-EC2NetworkAclAssociation', 
        'Set-EC2NetworkAclEntry', 
        'Set-EC2Route', 
        'Set-EC2RouteTableAssociation', 
        'Set-EC2TransitGatewayRoute', 
        'Start-EC2ByoipCidrAdvertisement', 
        'Start-EC2Instance', 
        'Start-EC2InstanceMonitoring', 
        'Start-EC2VpcEndpointServicePrivateDnsVerification', 
        'Stop-EC2BundleTask', 
        'Stop-EC2ByoipCidrAdvertisement', 
        'Stop-EC2ClientVpnConnection', 
        'Stop-EC2ExportTask', 
        'Stop-EC2ImportTask', 
        'Stop-EC2Instance', 
        'Stop-EC2InstanceMonitoring', 
        'Stop-EC2ReservedInstancesListing', 
        'Stop-EC2SpotFleetRequest', 
        'Stop-EC2SpotInstanceRequest', 
        'Unregister-EC2Address', 
        'Unregister-EC2ByoipCidr', 
        'Unregister-EC2ClientVpnTargetNetwork', 
        'Unregister-EC2IamInstanceProfile', 
        'Unregister-EC2Image', 
        'Unregister-EC2InstanceEventNotificationAttribute', 
        'Unregister-EC2Ipv6AddressList', 
        'Unregister-EC2PrivateIpAddress', 
        'Unregister-EC2RouteTable', 
        'Unregister-EC2SubnetCidrBlock', 
        'Unregister-EC2TransitGatewayMulticastDomain', 
        'Unregister-EC2TransitGatewayMulticastGroupMember', 
        'Unregister-EC2TransitGatewayMulticastGroupSource', 
        'Unregister-EC2TransitGatewayRouteTable', 
        'Unregister-EC2VpcCidrBlock', 
        'Update-EC2SecurityGroupRuleEgressDescription', 
        'Update-EC2SecurityGroupRuleIngressDescription')

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module
    AliasesToExport = @(
        'Confirm-EC2ReservedInstancesExchangeQuote', 
        'Confirm-EC2TransitGatewayPeeringAttachment', 
        'Confirm-EC2TransitGatewayVpcAttachment', 
        'Confirm-EC2EndpointConnection', 
        'Confirm-EC2VpcPeeringConnection', 
        'New-EC2Hosts', 
        'New-EC2FlowLogs', 
        'Remove-EC2FlowLogs', 
        'Get-EC2AccountAttributes', 
        'Get-EC2ExportTasks', 
        'Get-EC2FlowLogs', 
        'Get-EC2Hosts', 
        'Get-EC2ReservedInstancesModifications', 
        'Get-EC2Snapshots', 
        'Get-EC2VpcPeeringConnections', 
        'Edit-EC2Hosts', 
        'ReleaseHosts')

    # List of all modules packaged with this module
    ModuleList = @()

    # List of all files packaged with this module
    FileList = @(
        'AWS.Tools.EC2.dll-Help.xml'
    )

    # Private data to pass to the module specified in ModuleToProcess
    PrivateData = @{

        PSData = @{
            Tags = @('AWS', 'cloud', 'Windows', 'PSEdition_Desktop', 'PSEdition_Core', 'Linux', 'MacOS', 'Mac')
            LicenseUri = 'https://aws.amazon.com/apache-2-0/'
            ProjectUri = 'https://github.com/aws/aws-tools-for-powershell'
            IconUri = 'https://sdk-for-net.amazonwebservices.com/images/AWSLogo128x128.png'
            ReleaseNotes = 'https://github.com/aws/aws-tools-for-powershell/blob/master/CHANGELOG.md'
        }
    }
}

# SIG # Begin signature block
# MIIcUAYJKoZIhvcNAQcCoIIcQTCCHD0CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCA3EMQrTJEoZKde
# DLHzQEPm0egZMGLVhBxRgI4FuxZGW6CCF0cwggS5MIIDoaADAgECAhArd4OFAE9M
# ppHAfzWQwHt/MA0GCSqGSIb3DQEBCwUAMIGEMQswCQYDVQQGEwJVUzEdMBsGA1UE
# ChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0
# IE5ldHdvcmsxNTAzBgNVBAMTLFN5bWFudGVjIENsYXNzIDMgU0hBMjU2IENvZGUg
# U2lnbmluZyBDQSAtIEcyMB4XDTE3MDcxMDAwMDAwMFoXDTIwMDcxMDIzNTk1OVow
# ajELMAkGA1UEBhMCVVMxEzARBgNVBAgMCldhc2hpbmd0b24xEDAOBgNVBAcMB1Nl
# YXR0bGUxGTAXBgNVBAoMEEFtYXpvbi5jb20sIEluYy4xGTAXBgNVBAMMEEFtYXpv
# bi5jb20sIEluYy4wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC18TJW
# m2/aGpvb+TP2CZMg49X/5bjDAgPxWlAs7bqDyZnRYJork4rLmejpeJu+2BhRjZeK
# OirT4XveddBsdL1/TR+FKp8BXEsrm0wcR4yT6mNHJ9yCgC1YBNG91bZ75kRIT+46
# chbC7eNI5703wi8ejxe2KvvOERppBTaFStVJuAHab69dvFma8qE3s7wbqPdQ5eTI
# +Xm0bXp8cObS+vj+hf3N2pfDNWM8ITva3kbowGoCW0rKzpf7fBGtBOKnOCCSL0yC
# AOwLlFkslemVyrT1/HTDjOTKCro016HxOPddA4cefvr2ZhGlRZQQHg7wMdG7TpZX
# ueQ6LoS9UxlzCYHFAgMBAAGjggE+MIIBOjAJBgNVHRMEAjAAMA4GA1UdDwEB/wQE
# AwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzBhBgNVHSAEWjBYMFYGBmeBDAEEATBM
# MCMGCCsGAQUFBwIBFhdodHRwczovL2Quc3ltY2IuY29tL2NwczAlBggrBgEFBQcC
# AjAZDBdodHRwczovL2Quc3ltY2IuY29tL3JwYTAfBgNVHSMEGDAWgBTUwAYiSes5
# S92T4lyhuEd2CXIDWDArBgNVHR8EJDAiMCCgHqAchhpodHRwOi8vcmIuc3ltY2Iu
# Y29tL3JiLmNybDBXBggrBgEFBQcBAQRLMEkwHwYIKwYBBQUHMAGGE2h0dHA6Ly9y
# Yi5zeW1jZC5jb20wJgYIKwYBBQUHMAKGGmh0dHA6Ly9yYi5zeW1jYi5jb20vcmIu
# Y3J0MA0GCSqGSIb3DQEBCwUAA4IBAQC+C4TcK44ph2QQK/1f65jOR23DtSBC3y9a
# bzRHdo4qxmcAW5ot69os7GJfzgVsA5lh1IT4+aMuGYA4GTcF6iTSOMgFSRwP8urI
# N2BprsWuMJsQ7+Flo3PBRN3dU6idOlFKOfuRxgIHRn47t2yRan6XTNhfiWl84DrD
# NjSTnk4c72Gzu0hiwQB9OTsf8CQP3Shb3ZzcAOmeUB01TFoJU34PfJpKlKQZeQIi
# W5WdPPr1G/0cAHgejDHtdNYcSqIWfoGeYgCxUg1IFpp1VmPlqb/de8QKONzPDK6/
# 5hulSGqGgpRmEkwGGJiQeOB51GxYZRCPq3hN3UJ6N0A+hYzj7yspMIIFRzCCBC+g
# AwIBAgIQfBs1NUrn23TnQV8RacprqDANBgkqhkiG9w0BAQsFADCBvTELMAkGA1UE
# BhMCVVMxFzAVBgNVBAoTDlZlcmlTaWduLCBJbmMuMR8wHQYDVQQLExZWZXJpU2ln
# biBUcnVzdCBOZXR3b3JrMTowOAYDVQQLEzEoYykgMjAwOCBWZXJpU2lnbiwgSW5j
# LiAtIEZvciBhdXRob3JpemVkIHVzZSBvbmx5MTgwNgYDVQQDEy9WZXJpU2lnbiBV
# bml2ZXJzYWwgUm9vdCBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTAeFw0xNDA3MjIw
# MDAwMDBaFw0yNDA3MjEyMzU5NTlaMIGEMQswCQYDVQQGEwJVUzEdMBsGA1UEChMU
# U3ltYW50ZWMgQ29ycG9yYXRpb24xHzAdBgNVBAsTFlN5bWFudGVjIFRydXN0IE5l
# dHdvcmsxNTAzBgNVBAMTLFN5bWFudGVjIENsYXNzIDMgU0hBMjU2IENvZGUgU2ln
# bmluZyBDQSAtIEcyMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA15VD
# 1NzfZ645+1KktiYxBHDpt45bKro3aTWVj7vAMOeG2HO73+vRdj+KVo7rLUvwVxhO
# sY2lM9MLdSPVankn3aPT9w6HZbXerRzx9TW0IlGvIqHBXUuQf8BZTqudeakC1x5J
# sTtNh/7CeKu/71KunK8I2TnlmlE+aV8wEE5xY2xY4fAgMxsPdL5byxLh24zEgJRy
# u/ZFmp7BJQv7oxye2KYJcHHswEdMj33D3hnOPu4Eco4X0//wsgUyGUzTsByf/qV4
# IEJwQbAmjG8AyDoAEUF6QbCnipEEoJl49He082Aq5mxQBLcUYP8NUfSoi4T+Idpc
# Xn31KXlPsER0b21y/wIDAQABo4IBeDCCAXQwLgYIKwYBBQUHAQEEIjAgMB4GCCsG
# AQUFBzABhhJodHRwOi8vcy5zeW1jZC5jb20wEgYDVR0TAQH/BAgwBgEB/wIBADBm
# BgNVHSAEXzBdMFsGC2CGSAGG+EUBBxcDMEwwIwYIKwYBBQUHAgEWF2h0dHBzOi8v
# ZC5zeW1jYi5jb20vY3BzMCUGCCsGAQUFBwICMBkaF2h0dHBzOi8vZC5zeW1jYi5j
# b20vcnBhMDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9zLnN5bWNiLmNvbS91bml2
# ZXJzYWwtcm9vdC5jcmwwEwYDVR0lBAwwCgYIKwYBBQUHAwMwDgYDVR0PAQH/BAQD
# AgEGMCkGA1UdEQQiMCCkHjAcMRowGAYDVQQDExFTeW1hbnRlY1BLSS0xLTcyNDAd
# BgNVHQ4EFgQU1MAGIknrOUvdk+JcobhHdglyA1gwHwYDVR0jBBgwFoAUtnf6aUhH
# n1MS1cLqBzJ2B9GXBxkwDQYJKoZIhvcNAQELBQADggEBAH/ryqfqi3ZC6z6OIFQw
# 47e53PpIPhbHD0WVEM0nhqNm8wLtcfiqwlWXkXCD+VJ+Umk8yfHglEaAGLuh1KRW
# pvMdAJHVhvNIh+DLxDRoIF60y/kF7ZyvcFMnueg+flGgaXGL3FHtgDolMp9Er25D
# KNMhdbuX2IuLjP6pBEYEhfcVnEsRjcQsF/7Vbn+a4laS8ZazrS359N/aiZnOsjhE
# wPdHe8olufoqaDObUHLeqJ/UzSwLNL2LMHhA4I2OJxuQbxq+CBWBXesv4lHnUR7J
# eCnnHmW/OO8BSgEJJA4WxBR5wUE3NNA9kVKUneFo7wjw4mmcZ26QCxqTcdQmAsPA
# WiMwggZqMIIFUqADAgECAhADAZoCOv9YsWvW1ermF/BmMA0GCSqGSIb3DQEBBQUA
# MGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsT
# EHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQg
# Q0EtMTAeFw0xNDEwMjIwMDAwMDBaFw0yNDEwMjIwMDAwMDBaMEcxCzAJBgNVBAYT
# AlVTMREwDwYDVQQKEwhEaWdpQ2VydDElMCMGA1UEAxMcRGlnaUNlcnQgVGltZXN0
# YW1wIFJlc3BvbmRlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKNk
# Xfx8s+CCNeDg9sYq5kl1O8xu4FOpnx9kWeZ8a39rjJ1V+JLjntVaY1sCSVDZg85v
# Zu7dy4XpX6X51Id0iEQ7Gcnl9ZGfxhQ5rCTqqEsskYnMXij0ZLZQt/USs3OWCmej
# vmGfrvP9Enh1DqZbFP1FI46GRFV9GIYFjFWHeUhG98oOjafeTl/iqLYtWQJhiGFy
# GGi5uHzu5uc0LzF3gTAfuzYBje8n4/ea8EwxZI3j6/oZh6h+z+yMDDZbesF6uHjH
# yQYuRhDIjegEYNu8c3T6Ttj+qkDxss5wRoPp2kChWTrZFQlXmVYwk/PJYczQCMxr
# 7GJCkawCwO+k8IkRj3cCAwEAAaOCAzUwggMxMA4GA1UdDwEB/wQEAwIHgDAMBgNV
# HRMBAf8EAjAAMBYGA1UdJQEB/wQMMAoGCCsGAQUFBwMIMIIBvwYDVR0gBIIBtjCC
# AbIwggGhBglghkgBhv1sBwEwggGSMCgGCCsGAQUFBwIBFhxodHRwczovL3d3dy5k
# aWdpY2VydC5jb20vQ1BTMIIBZAYIKwYBBQUHAgIwggFWHoIBUgBBAG4AeQAgAHUA
# cwBlACAAbwBmACAAdABoAGkAcwAgAEMAZQByAHQAaQBmAGkAYwBhAHQAZQAgAGMA
# bwBuAHMAdABpAHQAdQB0AGUAcwAgAGEAYwBjAGUAcAB0AGEAbgBjAGUAIABvAGYA
# IAB0AGgAZQAgAEQAaQBnAGkAQwBlAHIAdAAgAEMAUAAvAEMAUABTACAAYQBuAGQA
# IAB0AGgAZQAgAFIAZQBsAHkAaQBuAGcAIABQAGEAcgB0AHkAIABBAGcAcgBlAGUA
# bQBlAG4AdAAgAHcAaABpAGMAaAAgAGwAaQBtAGkAdAAgAGwAaQBhAGIAaQBsAGkA
# dAB5ACAAYQBuAGQAIABhAHIAZQAgAGkAbgBjAG8AcgBwAG8AcgBhAHQAZQBkACAA
# aABlAHIAZQBpAG4AIABiAHkAIAByAGUAZgBlAHIAZQBuAGMAZQAuMAsGCWCGSAGG
# /WwDFTAfBgNVHSMEGDAWgBQVABIrE5iymQftHt+ivlcNK2cCzTAdBgNVHQ4EFgQU
# YVpNJLZJMp1KKnkag0v0HonByn0wfQYDVR0fBHYwdDA4oDagNIYyaHR0cDovL2Ny
# bDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0QXNzdXJlZElEQ0EtMS5jcmwwOKA2oDSG
# Mmh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRENBLTEu
# Y3JsMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGln
# aWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5j
# b20vRGlnaUNlcnRBc3N1cmVkSURDQS0xLmNydDANBgkqhkiG9w0BAQUFAAOCAQEA
# nSV+GzNNsiaBXJuGziMgD4CH5Yj//7HUaiwx7ToXGXEXzakbvFoWOQCd42yE5FpA
# +94GAYw3+puxnSR+/iCkV61bt5qwYCbqaVchXTQvH3Gwg5QZBWs1kBCge5fH9j/n
# 4hFBpr1i2fAnPTgdKG86Ugnw7HBi02JLsOBzppLA044x2C/jbRcTBu7kA7YUq/OP
# Q6dxnSHdFMoVXZJB2vkPgdGZdA0mxA5/G7X1oPHGdwYoFenYk+VVFvC7Cqsc21xI
# J2bIo4sKHOWV2q7ELlmgYd3a822iYemKC23sEhi991VUQAOSK2vCUcIKSK+w1G7g
# 9BQKOhvjjz3Kr2qNe9zYRDCCBs0wggW1oAMCAQICEAb9+QOWA63qAArrPye7uhsw
# DQYJKoZIhvcNAQEFBQAwZTELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0
# IEluYzEZMBcGA1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEkMCIGA1UEAxMbRGlnaUNl
# cnQgQXNzdXJlZCBJRCBSb290IENBMB4XDTA2MTExMDAwMDAwMFoXDTIxMTExMDAw
# MDAwMFowYjELMAkGA1UEBhMCVVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcG
# A1UECxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGlnaUNlcnQgQXNzdXJl
# ZCBJRCBDQS0xMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6IItmfnK
# wkKVpYBzQHDSnlZUXKnE0kEGj8kz/E1FkVyBn+0snPgWWd+etSQVwpi5tHdJ3InE
# Ctqvy15r7a2wcTHrzzpADEZNk+yLejYIA6sMNP4YSYL+x8cxSIB8HqIPkg5QycaH
# 6zY/2DDD/6b3+6LNb3Mj/qxWBZDwMiEWicZwiPkFl32jx0PdAug7Pe2xQaPtP77b
# lUjE7h6z8rwMK5nQxl0SQoHhg26Ccz8mSxSQrllmCsSNvtLOBq6thG9IhJtPQLnx
# TPKvmPv2zkBdXPao8S+v7Iki8msYZbHBc63X8djPHgp0XEK4aH631XcKJ1Z8D2Kk
# PzIUYJX9BwSiCQIDAQABo4IDejCCA3YwDgYDVR0PAQH/BAQDAgGGMDsGA1UdJQQ0
# MDIGCCsGAQUFBwMBBggrBgEFBQcDAgYIKwYBBQUHAwMGCCsGAQUFBwMEBggrBgEF
# BQcDCDCCAdIGA1UdIASCAckwggHFMIIBtAYKYIZIAYb9bAABBDCCAaQwOgYIKwYB
# BQUHAgEWLmh0dHA6Ly93d3cuZGlnaWNlcnQuY29tL3NzbC1jcHMtcmVwb3NpdG9y
# eS5odG0wggFkBggrBgEFBQcCAjCCAVYeggFSAEEAbgB5ACAAdQBzAGUAIABvAGYA
# IAB0AGgAaQBzACAAQwBlAHIAdABpAGYAaQBjAGEAdABlACAAYwBvAG4AcwB0AGkA
# dAB1AHQAZQBzACAAYQBjAGMAZQBwAHQAYQBuAGMAZQAgAG8AZgAgAHQAaABlACAA
# RABpAGcAaQBDAGUAcgB0ACAAQwBQAC8AQwBQAFMAIABhAG4AZAAgAHQAaABlACAA
# UgBlAGwAeQBpAG4AZwAgAFAAYQByAHQAeQAgAEEAZwByAGUAZQBtAGUAbgB0ACAA
# dwBoAGkAYwBoACAAbABpAG0AaQB0ACAAbABpAGEAYgBpAGwAaQB0AHkAIABhAG4A
# ZAAgAGEAcgBlACAAaQBuAGMAbwByAHAAbwByAGEAdABlAGQAIABoAGUAcgBlAGkA
# bgAgAGIAeQAgAHIAZQBmAGUAcgBlAG4AYwBlAC4wCwYJYIZIAYb9bAMVMBIGA1Ud
# EwEB/wQIMAYBAf8CAQAweQYIKwYBBQUHAQEEbTBrMCQGCCsGAQUFBzABhhhodHRw
# Oi8vb2NzcC5kaWdpY2VydC5jb20wQwYIKwYBBQUHMAKGN2h0dHA6Ly9jYWNlcnRz
# LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcnQwgYEGA1Ud
# HwR6MHgwOqA4oDaGNGh0dHA6Ly9jcmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFz
# c3VyZWRJRFJvb3RDQS5jcmwwOqA4oDaGNGh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNv
# bS9EaWdpQ2VydEFzc3VyZWRJRFJvb3RDQS5jcmwwHQYDVR0OBBYEFBUAEisTmLKZ
# B+0e36K+Vw0rZwLNMB8GA1UdIwQYMBaAFEXroq/0ksuCMS1Ri6enIZ3zbcgPMA0G
# CSqGSIb3DQEBBQUAA4IBAQBGUD7Jtygkpzgdtlspr1LPUukxR6tWXHvVDQtBs+/s
# dR90OPKyXGGinJXDUOSCuSPRujqGcq04eKx1XRcXNHJHhZRW0eu7NoR3zCSl8wQZ
# Vann4+erYs37iy2QwsDStZS9Xk+xBdIOPRqpFFumhjFiqKgz5Js5p8T1zh14dpQl
# c+Qqq8+cdkvtX8JLFuRLcEwAiR78xXm8TBJX/l/hHrwCXaj++wc4Tw3GXZG5D2dF
# zdaD7eeSDY2xaYxP+1ngIw/Sqq4AfO6cQg7PkdcntxbuD8O9fAqg7iwIVYUiuOsY
# Gk38KiGtSTGDR5V3cdyxG0tLHBCcdxTBnU8vWpUIKRAmMYIEXzCCBFsCAQEwgZkw
# gYQxCzAJBgNVBAYTAlVTMR0wGwYDVQQKExRTeW1hbnRlYyBDb3Jwb3JhdGlvbjEf
# MB0GA1UECxMWU3ltYW50ZWMgVHJ1c3QgTmV0d29yazE1MDMGA1UEAxMsU3ltYW50
# ZWMgQ2xhc3MgMyBTSEEyNTYgQ29kZSBTaWduaW5nIENBIC0gRzICECt3g4UAT0ym
# kcB/NZDAe38wDQYJYIZIAWUDBAIBBQCggYQwGAYKKwYBBAGCNwIBDDEKMAigAoAA
# oQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4w
# DAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQg4Nyos56Mm0tyH3eZ4tjKNZgW
# Ys8yVR4skqgiOmRtPmkwDQYJKoZIhvcNAQEBBQAEggEAcEePK7OwNS5V+F4zi8WB
# TEan39oEb/ISpE92QDAZB/0HcKrj8yJWPbkxsDX+cc25oy3rcUE5OwPJU4iQZRUr
# tMD0bKtXIOG6c4OEXzCPHySx7slP9wgJKrywPqhDZFPux9qCAICc+brvR2+JUdD7
# 9Qx3hs/i1N1THsWHrACxaqg8XYmzwInMPehTCmlKcaeVqrznoAXK7DJd0QmfhGoX
# 7fArFsHrfPi81czffadVhDfVlssfIDQamEznQzSC71QufaNC5Jyrs2EnyJRH3a3p
# KgHhfodjqiHTU58q6nPoWuJ+WcyR4XK8Ccfu120tuPs5awQ41tfb9XZHF+ewJVLn
# 66GCAg8wggILBgkqhkiG9w0BCQYxggH8MIIB+AIBATB2MGIxCzAJBgNVBAYTAlVT
# MRUwEwYDVQQKEwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5j
# b20xITAfBgNVBAMTGERpZ2lDZXJ0IEFzc3VyZWQgSUQgQ0EtMQIQAwGaAjr/WLFr
# 1tXq5hfwZjAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAc
# BgkqhkiG9w0BCQUxDxcNMjAwNjEwMjMxNjU5WjAjBgkqhkiG9w0BCQQxFgQUo2dA
# GueCjnhW4VCgktTc/WWhVHYwDQYJKoZIhvcNAQEBBQAEggEAS4Fw1iduLPkcmrMx
# g+iwQFlqbKABMMv4h8j8bj3Uqtxy7NM9R3XYBCkIubPAcovbJyrqfOutL8r/BRBC
# 8RPj54fymEwUFpegL9gzAVEQbOdvlptvBRcvmqXToTGq6FEy2sZNXFBJjUadoD4v
# Y85Ojat2nVjTZhKj9q8ywdv8sEyULYWTmsbbOmPO6n6dOTnrAn+SvuxYQ7jyRqg3
# 7QhNL1R4JanJR0fmufzj8ktFc137ecvIZCn++dJVMGf0jP6CTLtSIkhtwOxndc1u
# mwuoiU68lbHvnebBfKDl2W9T2NuCNXhypMUpr8cb4CoQelZKZW094ONpPyOGSLSN
# qpmKKw==
# SIG # End signature block
