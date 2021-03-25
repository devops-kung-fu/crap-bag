// DOMI-0001
resource "aws_s3_bucket" "no_tags" {
  bucket = "no-tags"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.kms_key.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket" "empty_tags" {
  bucket = "empty-tags"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.kms_key.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  tags = {}
}

resource "aws_s3_bucket" "versioning_false" {
  bucket = "versioning-false"
  versioning {
    enabled = false
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.kms_key.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  tags = {
    Name = "versioning-false"
  }
}

resource "aws_s3_bucket" "versioning_empty" {
  bucket = "versioning-empty"
  versioning {}
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.kms_key.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  tags = {
    Name = "versioning-empty"
  }
}

resource "aws_s3_bucket" "versioning_missing" {
  bucket = "versioning-missing"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.kms_key.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
  tags = {
    Name = "versioning-missing"
  }
}

resource "aws_s3_bucket" "server_side_encryption_missing" {
  bucket = "server-side-encryption-missing"
  versioning {
    enabled = true
  }
  tags = {
    Name = "server-side-encryption-missing"
  }
}
