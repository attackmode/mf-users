terraform {
  backend "s3" {
    bucket = "restatefile"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}
