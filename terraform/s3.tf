// DOMI-0001
resource "aws_s3_bucket" "no_tags" {
  bucket = "no-tags"
}

resource "aws_s3_bucket" "empty_tags" {
  bucket = "empty-tags"
  versioning {
    enabled = true
  }
  tags = {}
}

resource "aws_s3_bucket" "versioning_false" {
  bucket = "versioning-false"
  versioning {
    enabled = false
  }
  tags = {
    Name = "versioning-false"
  }
}

resource "aws_s3_bucket" "versioning_empty" {
  bucket = "versioning-empty"
  versioning {}
  tags = {
    Name = "versioning-empty"
  }
}

resource "aws_s3_bucket" "versioning_missing" {
  bucket = "versioning-missing"
  tags = {
    Name = "versioning-missing"
  }
}

