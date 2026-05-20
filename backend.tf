terraform {
  backend "s3" {
    bucket         = "nickos-bucket"
    key            = "prod/terraform.tfstate"
    region         = "eu-west-2"
    use_lockfile = "terraform-locks"
    encrypt        = true
  }
}

# //terraform {
# // backend "s3" {
# //  bucket         = "your-bucket-name"
# //  key            = "/terraform.tfstate-file-name"
# //  region         = "us-east-1"
# //  dynamodb_table = "terraform-locks"
# //  encrypt        = true
# //  }
# //  }