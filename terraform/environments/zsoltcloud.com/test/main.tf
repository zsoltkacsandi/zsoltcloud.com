resource "digitalocean_droplet" "test1" {
  name     = "test1"
  region   = "fra1"
  vpc_uuid = data.digitalocean_vpc.zsoltcloud_com_fra1.id
  ipv6     = true

  image         = "ubuntu-22-04-x64"
  size          = "s-1vcpu-1gb"
  droplet_agent = true

  ssh_keys = [
    data.digitalocean_ssh_key.zsoltcloud_com_default1.id
  ]

  user_data = data.cloudinit_config.user_data.rendered
}

resource "digitalocean_project_resources" "droplet_test1" {
  project = data.digitalocean_project.zsoltcloud_com.id
  resources = [
    digitalocean_droplet.test1.urn
  ]
}

resource "digitalocean_record" "internal_domain_A" {
  domain = data.digitalocean_domain.zsoltcloud_com.id
  type   = "A"
  name   = "test1.int"
  value  = digitalocean_droplet.test1.ipv4_address_private
}

resource "digitalocean_record" "public_domain_A" {
  domain = data.digitalocean_domain.zsoltcloud_com.id
  type   = "A"
  name   = "test1"
  value  = digitalocean_droplet.test1.ipv4_address
}

resource "digitalocean_record" "public_domain_AAAA" {
  domain = data.digitalocean_domain.zsoltcloud_com.id
  type   = "AAAA"
  name   = "test1"
  value  = digitalocean_droplet.test1.ipv6_address
}
