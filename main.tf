module "iam-role-and-policy-v4" {
  source    = "tfe.karla-gabriel.sbx.hashidemos.io/kg-dev/iam-role-and-policy-v4/aws"
  version   = "1.0.0"
  role_name = "kg-dev-iam-role-v4"
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "${var.bucket_name}-aws"
  acl    = "private"

  versioning {
    enabled = var.enable_versioning
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

module "test_s3_bucket" {

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.14.1"

  bucket = var.bucket_name
  versioning = {
    enabled = var.enable_versioning
  }
}
