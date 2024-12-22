provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

module "container" {
  source                               = "./services/container"
  compartment_id                       = var.compartment_id
  container_instance_vnic_display_name = var.container_instance_vnic_display_name
  container_instance_display_name      = var.container_instance_display_name
  free_tier_micro_shape_ocid           = var.free_tier_micro_shape_ocid
  container_instance_image_ocid        = var.container_instance_image_ocid
  container_instance_image_type        = var.container_instance_image_type
  container_instance_ssh_public_key    = var.container_instance_ssh_public_key
  vcn_cidr_block                       = var.vcn_cidr_block
  vcn_display_name                     = var.vcn_display_name
  vcn_dns_label                        = var.vcn_dns_label
  subnet_cidr_block                    = var.subnet_cidr_block
  subnet_display_name                  = var.subnet_display_name
  subnet_dns_label                     = var.subnet_dns_label
  security_list_display_name           = var.security_list_display_name
  ingress_protocol                     = var.ingress_protocol
  ingress_protocol_tcp                 = var.ingress_protocol_tcp
  ingress_source_cidr_block            = var.ingress_source_cidr_block
  egress_protocol                      = var.egress_protocol
  egress_source_cidr_block             = var.egress_source_cidr_block
  route_table_display_name             = var.route_table_display_name
  route_rule_destination               = var.route_rule_destination
  route_rule_destination_type          = var.route_rule_destination_type
  internet_gateway_display_name        = var.internet_gateway_display_name
  internet_gateway_enabled             = var.internet_gateway_enabled
}
