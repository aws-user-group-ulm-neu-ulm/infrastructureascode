resource "aws_s3_bucket" "static" {
  bucket        = "aws-user-group-ulm-neu-ulm-static"
  acl           = "public-read"
  force_destroy = "true"

  versioning {
    enabled = false
  }

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = ["https://www.aws-user-group-ulm-neu-ulm.de"]
    expose_headers  = ["ETag"]
    max_age_seconds = "86400"
  }

}
data "aws_iam_policy_document" "s3_bucket_static" {
  statement {
    sid    = "AllowCloudFrontObjectRead"
    effect = "Allow"

    actions   = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.static.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }

  statement {
    sid    = "AllowCloudFrontBucketList"
    effect = "Allow"

    actions   = ["s3:ListBucket"]
    resources = ["${aws_s3_bucket.static.arn}"]

    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
  }
}
resource "aws_s3_bucket_policy" "static" {
  bucket = "${aws_s3_bucket.static.id}"
  policy = "${data.aws_iam_policy_document.s3_bucket_static.json}"
}
