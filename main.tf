terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}



module "cy_s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

    for_each = toset(["adventuretech", "natureescape", "datasummit"])

  bucket = "${each.key}-cy-bucket"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

}



