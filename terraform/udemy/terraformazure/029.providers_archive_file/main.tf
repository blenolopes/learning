terraform {
  required_providers {
    archive = {
      source  = "hashicorp/archive"
      version = "2.2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "archive"  { }
provider "random"   { }

resource "random_string" "genRandomHash" {
  length  = 6
  lower   = true
  numeric = true
}

data "archive_file" "zipSingleFile" {
  type        = "zip"
  source_file = "${path.module}/data/sample1.txt"
  output_path = "${path.module}/data/sample1.zip"
}

output "zip_singleFileInfo" {
  value = data.archive_file.zipSingleFile
}

output "zip_singleFileSize" {
  value = data.archive_file.zipSingleFile.output_size
}

data "archive_file" "zipDirectory" {
  type        = "zip"
  source_dir  = "${path.module}/data/"
  output_path = "${path.module}/data/allDirectory-${random_string.genRandomHash.result}.zip"
}

output "zipDirectoryInfo" {
  value = data.archive_file.zipDirectory
}

output "zipDirectorySize" {
  value = data.archive_file.zipDirectory.output_size
}
