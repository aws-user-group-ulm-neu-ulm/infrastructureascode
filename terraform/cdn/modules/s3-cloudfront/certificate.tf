/* CloudFront is based out of us-east-1, so when making any lookups for
   Certificates, they must look them up in that region, not in the local region
   we're building in. As such, arrange for the frontend certificate below to
   be selected from us-east-1 instead - important. */

provider "aws" {
  version = "2.16"
  alias   = "certificates"
  # Needed for certificate requests in CloudFront
  region = "us-east-1"
}
data "aws_acm_certificate" "frontend" {
  provider = "aws.certificates"
  domain   = "www.aws-user-group-ulm-neu-ulm.de"
}
