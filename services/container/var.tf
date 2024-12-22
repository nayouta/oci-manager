variable "compartment_id" {
  type = string
}

variable "container_instance_vnic_display_name" {
  type = string
}

variable "container_instance_display_name" {
  type = string
}

variable "free_tier_micro_shape_ocid" {
  type = string
}

variable "container_instance_image_ocid" {
  type = string
}

variable "container_instance_image_type" {
  type = string
}

variable "container_instance_ssh_public_key" {
  type = string
}

variable "vcn_cidr_block" {
  type = string
}

variable "vcn_display_name" {
  type = string
}

variable "vcn_dns_label" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "subnet_display_name" {
  type = string

}
variable "subnet_dns_label" {
  type = string
}

variable "security_list_display_name" {
  type = string
}

variable "ingress_protocol" {
  type = list(string)
}

variable "ingress_protocol_tcp" {
  type = string
}

variable "ingress_source_cidr_block" {
  type = string
}

variable "egress_protocol" {
  type = list(string)
}

variable "egress_source_cidr_block" {
  type = string
}

variable "route_table_display_name" {
  type = string
}

variable "route_rule_destination" {
  type = string
}

variable "route_rule_destination_type" {
  type = string
}

variable "internet_gateway_display_name" {
  type = string
}

variable "internet_gateway_enabled" {
  type = bool
}
