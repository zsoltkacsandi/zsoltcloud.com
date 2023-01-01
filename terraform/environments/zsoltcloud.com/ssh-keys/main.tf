resource "digitalocean_ssh_key" "zsoltcloud_com_default1" {
  name       = "zsoltcloud.com-default1"
  public_key = file("files/zsoltcloud.com-default1.pub")
}
