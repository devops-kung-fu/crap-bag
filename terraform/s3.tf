// DOMI-0001
resource "aws_s3_bucket" "patbot_logs" {
  bucket = "patbot-logs"
}

resource "aws_s3_bucket" "master_builders" {
  bucket = "master-builders"
  tags = {
  }
}
