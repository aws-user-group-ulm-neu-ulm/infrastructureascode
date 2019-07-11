resource "aws_s3_bucket" "logs" {
  bucket        = "${lower(var.bucketname)}-logs"
  acl           = "log-delivery-write"
  force_destroy = "${var.force_destroy}"

  lifecycle_rule {
    id      = "${lower(var.bucketname)}-logs-transitions"
    enabled = true

    transition {
      days          = "${var.logs_transition_ia}"
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = "${var.logs_transition_glacier}"
      storage_class = "GLACIER"
    }

    expiration {
      days = "${var.logs_expiration}"
    }
  }

  tags = "${merge(var.tags, map("Name", format("s3-cloudfront-%s-logs", var.name)))}"
}
