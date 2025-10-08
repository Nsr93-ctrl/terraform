terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  content  = "Hello Terraform!"
  filename = "${path.module}/hello.txt"
}
