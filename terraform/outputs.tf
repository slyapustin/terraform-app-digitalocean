output "ipv4_address" {
  value = digitalocean_droplet.my_svelte_app.ipv4_address
}

output "price_monthly" {
  value = digitalocean_droplet.my_svelte_app.price_monthly
}
