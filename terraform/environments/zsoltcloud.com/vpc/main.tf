resource "digitalocean_vpc" "zsoltcloud_com_fra1" {
  name     = "zsoltcloud.com-fra1"
  region   = "fra1"
  ip_range = "10.114.0.0/20"
}
