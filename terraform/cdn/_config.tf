terraform {
  required_version = "= 0.11.14"
}
# Needed for the bucket, here you can choose also different regions if needed
# In this example I have choosed the same regions as CDN and ACM is (us-east-1)
provider "aws" {
  version = "2.16"
  region  = "us-east-1"
 }
  # Needed for certificate requests within module
provider "aws" {
  version = "2.16"
  alias   = "dns"
  region  = "us-east-1"
 }
  # Needed for certificate requests in CloudFront
provider "aws" {
  version = "2.16"
  alias   = "certificates"
  region  = "us-east-1"
  }