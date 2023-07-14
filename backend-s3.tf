terraform {
  backend "s3" {
    bucket = "terraform-projectsbyhtr"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}