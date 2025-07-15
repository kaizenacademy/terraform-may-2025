terraform {
  backend "s3" {
    bucket = "kaizen-adileta"
    key    = "kaizen/terraform.tfstate"
    region = "us-east-1"
  }
}
