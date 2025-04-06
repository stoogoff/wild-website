
data "bunnynet_dns_zone" "dns" {
	domain = "wildrpg.com"
}

resource "bunnynet_dns_record" "dns" {
	zone = data.bunnynet_dns_zone.dns.id

	name  = "www"
	type  = "CNAME"
	value = "${bunnynet_pullzone.cdn.name}.${bunnynet_pullzone.cdn.cdn_domain}"
}

resource "bunnynet_dns_record" "bare" {
	zone = data.bunnynet_dns_zone.dns.id

	name  = ""
	type  = "CNAME"
	value = "${bunnynet_pullzone.cdn.name}.${bunnynet_pullzone.cdn.cdn_domain}"
}
