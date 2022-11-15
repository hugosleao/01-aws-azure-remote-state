resource "aws_s3_bucket" "bucket01" {
  bucket = "bucket01-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket01.id
  versioning_configuration {
    status = "Enabled"
  }
}