# zsoltcloud.com
resource "digitalocean_domain" "zsoltcloud_com" {
  name = "zsoltcloud.com"
}

resource "digitalocean_project_resources" "zsoltcloud_com" {
  project = data.digitalocean_project.zsoltcloud_com.id
  resources = [
    digitalocean_domain.zsoltcloud_com.urn
  ]
}
