terraform {
  required_providers {
    archive = {
      source  = "hashicorp/archive"
      version = "2.2.0"
    }
  }
}

provider "archive" {

}

data "archive_file" "zipSingleFile" {
  type          = "zip"
  source_file   = "${path.module}/data/sample1.txt"
  output_path   = "${path.module}/data/sample1.zip"
}

output "zip_singleFile" {
  value         = data.archive_file.zipSingleFile
}

data "archive_file" "zipDirectory" {
    type        = "zip"
    source_dir  = "${path.module}/data/"
    output_path = "${path.module}/data/allDirectory.zip"
}

output "zipDirectory" {
    value       = data.archive_file.zipDirectory
}
