
resource "bunnynet_pullzone_edgerule" "redirect_bare_domain" {
	enabled     = true
	pullzone    = bunnynet_pullzone.cdn.id
	description = "Redirect wildrpg.com to www.wildrpg.com"

	actions = [
		{
			type       = "Redirect"
			parameter1 = "https://${bunnynet_dns_record.dns.name}.${data.bunnynet_dns_zone.dns.domain}"
			parameter2 = "301"
			parameter3 = null
		}
	]

	match_type = "MatchAny"
	triggers = [
		{
			type       = "Url"
			match_type = "MatchAny"
			patterns   = ["https://${data.bunnynet_dns_zone.dns.domain}/*"]
			parameter1 = null
			parameter2 = null
		}
	]
}
