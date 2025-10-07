<<<<<<< HEAD
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
=======
provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  name  = "nginx_server"
  image = docker_image.nginx.latest
  ports {
    internal = 80
    external = var.nginx_port
  }
}
>>>>>>> b6e7e83 (Exercice 3.1 – Structure du projet Terraform)
