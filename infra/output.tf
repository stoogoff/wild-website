
output "cdn_url" {
	value = "https://${bunnynet_pullzone.cdn.name}.${bunnynet_pullzone.cdn.cdn_domain}"
}

output "url" {
	value = "https://${bunnynet_dns_record.dns.name}.${data.bunnynet_dns_zone.dns.domain}"
}
