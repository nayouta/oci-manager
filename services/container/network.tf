resource "oci_core_vcn" "core_vcn" {
  cidr_block     = var.vcn_cidr_block
  compartment_id = var.compartment_id
  display_name   = var.vcn_display_name
  dns_label      = var.vcn_dns_label
}

resource "oci_core_subnet" "core_subnet" {
  cidr_block        = var.subnet_cidr_block
  compartment_id    = var.compartment_id
  display_name      = var.subnet_display_name
  dns_label         = var.subnet_dns_label
  security_list_ids = [oci_core_security_list.core_security_list.id]
  route_table_id    = oci_core_route_table.core_route_table.id
  vcn_id            = oci_core_vcn.core_vcn.id
}

resource "oci_core_route_table" "core_route_table" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.core_vcn.id
  display_name   = var.route_table_display_name
  route_rules {
    destination       = var.route_rule_destination
    destination_type  = var.route_rule_destination_type
    network_entity_id = oci_core_internet_gateway.core_internet_gateway.id
  }
}

resource "oci_core_internet_gateway" "core_internet_gateway" {
  compartment_id = var.compartment_id
  display_name   = var.internet_gateway_display_name
  enabled        = var.internet_gateway_enabled
  vcn_id         = oci_core_vcn.core_vcn.id
}
