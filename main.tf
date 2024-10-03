resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    ModuleName    = "terraform-aws-s3"
    ModuleVersion = local.module_version
    DeployedBy    = "Terraform"
  }
}
