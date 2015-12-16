resource "digitalocean_record" "A-example" {
  domain = "jumlabs.com"
  type = "A"
  name = "example"
  value = "${digitalocean_droplet.example_jumlabs.ipv4_address}"
}
