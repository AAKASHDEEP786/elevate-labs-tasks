terraform {
  required_version = ">= 1.0.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"

  # If running Terraform on Windows (PowerShell/CMD) with Docker Desktop, uncomment:
  # host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "myapp" {
  name         = "aakashdevops/amazon:latest"  # Docker Hub image
  keep_locally = false
}

resource "docker_container" "myapp" {
  name  = "terraform-amazon-demo"
  image = docker_image.myapp.image_id

  ports {
    internal = 80    # container port
    external = 8081  # host port
  }
}
