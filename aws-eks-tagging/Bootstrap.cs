using Amazon.Lambda.PowerShellHost;

namespace aws_eks_tagging
{
    public class Bootstrap : PowerShellFunctionHost
    {
        public Bootstrap() : base("aws-eks-tagging.ps1")
        {
        }
    }
}
