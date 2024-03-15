variable "do_token" {
  description = "Digital Ocean API token (https://cloud.digitalocean.com/settings/api/tokens)"
  type        = string
}
variable "ssh_fingerprint" {
  description = "SSH fingerprint. Run 'ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub' to get it"
  type        = string
}
variable "domain_name" {
  description = "Domain name for application"
  type        = string
}
variable "private_key_path" {
  description = "Path to private key (e.g. ~/.ssh/id_rsa)"
  type        = string
}
variable "digitalocean_droplet_region" {
  description = "Digital Ocean Droplet Region"
  type        = string
  default     = "nyc1"
}
variable "digitalocean_droplet_size" {
  description = "Digital Ocean Droplet Size"
  type        = string
  default     = "s-1vcpu-1gb"
}
variable "digitalocean_droplet_name" {
  description = "Digital Ocean Droplet Name"
  type        = string
  default     = "svelte-app-droplet"
}
