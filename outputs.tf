output "container_id" {
  value = docker_container.myapp.id
}

output "image_id" {
  value = docker_image.myapp.image_id
}
