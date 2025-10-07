terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# Une ressource locale qui crée un fichier avec un message
resource "local_file" "hello" {
  content  = "Hello Terraform!"
  filename = "${path.module}/hello.txt"
}
