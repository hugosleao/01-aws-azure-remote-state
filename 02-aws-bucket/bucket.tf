resource "aws_s3_bucket" "bucket02" {
  bucket = "bucket02-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket02.id
  versioning_configuration {
    status = "Enabled"
  }
}