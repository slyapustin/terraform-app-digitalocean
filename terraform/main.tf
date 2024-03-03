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
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    var.ssh_fingerprint
  ]
}

resource "digitalocean_domain" "myapp_domain" {
  name       = var.domain_name
  ip_address = digitalocean_droplet.my_svelte_app.ipv4_address
}
