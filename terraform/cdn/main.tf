/*
urls to test s3 content without cloudfront out of Virghina (us-east-1)
https://aws-user-group-ulm-neu-ulm-static.s3.amazonaws.com/index.html
https://aws-user-group-ulm-neu-ulm-static.s3.amazonaws.com/images/newyork.jpg
https://aws-user-group-ulm-neu-ulm-static.s3.amazonaws.com/images/code.jpg
https://aws-user-group-ulm-neu-ulm-static.s3.amazonaws.com/images/matrix.jpg

You can test it with with https://www.webpagetest.org

urls to test s3 content without cloudfront out of Frankfurt
https://www.aws-user-group-ulm-neu-ulm.de/index.html
https://www.aws-user-group-ulm-neu-ulm.de/images/newyork.jpg
https://www.aws-user-group-ulm-neu-ulm.de/images/code.jpg
https://www.aws-user-group-ulm-neu-ulm.de/images/matrix.jpg
*/
#################################################################################################################
######################################### setup Route53 #########################################################
#################################################################################################################
# If you register a domain, a Route53 hosted zone will be added automaticly by AWS 
#################################################################################################################
######################################## register Domain ########################################################
#################################################################################################################
/*
To register a domain, I have done this manually through the AWS Management Console under Route53
 - Domains - Registered domains - Register Domain
*/ 
data "aws_route53_zone" "static" {
  name         = "${var.domain_name}"
  private_zone = false
}
#################################################################################################################
######################################## require ssl certificate ################################################
#################################################################################################################
module "certificate" {
  source = "modules/terraform-aws-acm-certificate"

  providers = {
    aws.acm_account     = "aws.certificates"
    aws.route53_account = "aws.dns"
  }

  domain_name                       = "www.${var.domain_name}"
  subject_alternative_names         = ["static.${var.domain_name}"]
  hosted_zone_id                    = "${data.aws_route53_zone.static.zone_id}"
  validation_record_ttl             = "60"
  allow_validation_record_overwrite = true
}
# # source: https://github.com/azavea/terraform-aws-acm-certificate

# #################################################################################################################
# ######################################## configure cloudfront    ################################################
# This is a second step, so if you run this, just comment out in the first run
# The certificate needs to be there first
# #################################################################################################################
module "website" {
  source = "modules/s3-cloudfront"

  name         = "www"
  hostname     = "www.${var.domain_name}"
  bucketname   = "aws-user-group-ulm-neu-ulm-staticcontent"
  #wildcard_ssl = "*.<yourdomain>.com"
  
#   aliases  = [
#   	"<yourdomain>.net",
#   	"<yourdomain>.org"
#   ]

  cache_ttl = 360

  logs_transition_ia      = 30
  logs_transition_glacier = 60
  logs_expiration         = 365

  price_class = "PriceClass_100"

  index_document = "index.html"
  error_document = "error.html"

  tags {
    Domain = "${var.domain_name}"
    Owner  = "AWS UG Ulm-Neu-Ulm"
    CostCenter  = "0815"
  }
}