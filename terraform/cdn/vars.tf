variable "stage" {
  default = "test"
}
variable "suffix" {
  default = "foo-name-your-choice"
}
variable "domain_name" {
  type        = "string"
  default     = "aws-user-group-ulm-neu-ulm.de"
  description = "Primary certificate domain name"
}
variable "subject_alternative_names" {
  type        = "list"
  default     = ["www", "static"]
  description = "Subject alternative domain names"
}
variable "validation_record_ttl" {
  default     = "60"
  description = "Route 53 time-to-live for validation records"
}
variable "allow_validation_record_overwrite" {
  default     = "true"
  description = "Allow Route 53 record creation to overwrite existing records"
}
variable "tags" {
  default     = {}
  description = "Extra tags to attach to the ACM certificate"
}