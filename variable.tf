variable "region"{
  default = "us-west1"
}

variable "zone"{
  default = "us-west1-a"
}

variable "project_id" {
 description = "The ID of the Google Cloud project"
 default = "terraform-learn-356905"
}
 
variable "credentials_file_path" {
 description = "Path to the JSON file used to describe your account credentials"
 default     = "/Users/vineetagarwal/Downloads/terraform-learn-356905-c87e09f02076.json"
 sensitive = true
}

variable "machine_type" {
  default = "f1-micro"
}
