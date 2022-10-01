terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.30.0"
      
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "gcs" {
   bucket  = "bucket-tfstate-terraform-commands"
   prefix  = "terraform/state"
   credentials = "/Users/vineetagarwal/Downloads/terraform-learn-356905-c87e09f02076.json"
 }
}

provider "google" {
  region= "us-west1"
  zone= "us-west1-a"
  project= "terraform-learn-356905"
  credentials = "/Users/vineetagarwal/Downloads/terraform-learn-356905-c87e09f02076.json"
}

provider "aws" {
  region = "us-east-1"
}


module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  project_id  = "terraform-learn-356905"
  names = ["first", "second"]
  prefix = "my-unique-prefix"
  
}















