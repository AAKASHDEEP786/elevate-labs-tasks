output "container_id" {
  value = docker_container.nginx.id
}

output "image_id" {
  value = docker_image.nginx.image_id
}

output "container_name" {
  value = docker_container.nginx.name
}
