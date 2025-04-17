provider "docker" {}

resource "docker_image" "node_app" {
  name         = "node:18"
  keep_locally = false
}

resource "docker_container" "node_container" {
  name  = "ci-cd-app"
  image = docker_image.node_app.latest
  ports {
    internal = 3000
    external = 3000
  }
}
