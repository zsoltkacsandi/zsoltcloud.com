data "digitalocean_project" "zsoltcloud_com" {
  name = "zsoltcloud.com"
}

data "digitalocean_vpc" "zsoltcloud_com_fra1" {
  name = "zsoltcloud.com-fra1"
}

data "digitalocean_ssh_key" "zsoltcloud_com_default1" {
  name = "zsoltcloud.com-default1"
}

data "cloudinit_config" "user_data" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/cloud-config"
    content      = file("${path.module}/files/cloud-config.yml")
  }

  part {
    content_type = "text/x-shellscript"
    content      = file("${path.module}/files/hello.sh")
  }
}

data "digitalocean_domain" "zsoltcloud_com" {
  name = "zsoltcloud.com"
}
