output "endpoint_url" {
  value = "${local.endpoint_url}"
}

output "proxy_url" {
  value = "http://${aws_instance.nginx.public_dns}"
}

output "public_url" {
  value = "https://${cloudflare_record.main.hostname}"
}

output "ssh_dest" {
  value = "${local.ssh_user}@${aws_eip.proxy.public_ip}"
}
