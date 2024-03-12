terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "my_svelte_app" {
  image  = "docker-20-04"
  name   = "svelte-app-droplet"
  region = "ams3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    var.ssh_fingerprint
  ]

  provisioner "remote-exec" {
    inline = [
      "mkdir -p /tmp/my_svelte_app",
    ]
  }

  provisioner "file" {
    source      = "../Dockerfile"
    destination = "/tmp/my_svelte_app/Dockerfile"
  }

  provisioner "file" {
    source      = "../svelte-app"
    destination = "/tmp/my_svelte_app/svelte-app/"
  }

  provisioner "remote-exec" {
    inline = [
      "cd /tmp/my_svelte_app",
      "docker build -t my_svelte_app .", // If using Docker
      "docker run -d -p 80:3000 my_svelte_app", // Adjust ports as needed
    ]
  }

  connection {
    type        = "ssh"
    host        = self.ipv4_address
    user        = "root"
    private_key = file(var.private_key_path)
  } 
}

resource "digitalocean_domain" "myapp_domain" {
  name       = var.domain_name
  ip_address = digitalocean_droplet.my_svelte_app.ipv4_address
}
