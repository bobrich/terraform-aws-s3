resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    tf_module    = "terraform-aws-s3"
    tf_module_version = local.module_version
    tf_foo = "bar"
  }
}
