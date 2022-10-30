#creating S3
  resource "aws_s3_bucket" "bbb" {
    bucket_name = var.s3_name

    tags = {
      Name        = "My bucket"
      Environment = "Dev"
    }
  }