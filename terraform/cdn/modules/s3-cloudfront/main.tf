/* CloudFront is based out of us-east-1, so when making any lookups for
   Certificates, they must look them up in that region, not in the local region
   we're building in. As such, arrange for the frontend certificate below to
   be selected from us-east-1 instead - important. 
Source: https://github.com/jonathanio/terraform-module-s3-cloudfront
*/
