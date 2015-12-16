resource "digitalocean_droplet" "example_jumlabs" {
    image = "ubuntu-14-04-x64"
    name = "example.jumlabs.com"
    region = "nyc2"
    size = "512mb"
    private_networking = true
    ssh_keys = [
        "${var.ssh_fingerprint}"
    ]

    connection {
        user = "root"
        type = "ssh"
        key_file = "${var.pvt_key}"
        timeout = "2m"
    }
    
   provisioner "remote-exec" {
    inline = [
      "echo 'I might use puppet or ansible to provision my server here'",
    ]
  }
}
