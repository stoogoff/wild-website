
locals {
	service_name = "wildrpg-web"
}

resource "bunnynet_storage_zone" "www" {
	name = local.service_name
	zone_tier = "Standard"
	region = "UK"
	replication_regions = ["BR", "NY", "SG"]
}

resource "bunnynet_pullzone" "cdn" {
	name = local.service_name
	cors_enabled = false

	origin {
		type = "StorageZone"
		storagezone = bunnynet_storage_zone.www.id
	}

	routing {
		tier = "Standard"
		zones = ["AF", "ASIA","EU", "SA", "US"]
	}
}

resource "bunnynet_pullzone_hostname" "webhost" {
	pullzone    = bunnynet_pullzone.cdn.id
	name        = "${bunnynet_dns_record.dns.name}.${data.bunnynet_dns_zone.dns.domain}"
	tls_enabled = true
	force_ssl   = true
}
