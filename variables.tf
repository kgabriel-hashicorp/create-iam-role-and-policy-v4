variable "bucket_name" {
  description = "S3 Bucket Name"
  default     = "kg-test-s3-bucket-for-fun"
  type        = string
}

variable "enable_versioning" {
  description = "Enable S3 Versioning"
  default     = true
  type        = bool
}