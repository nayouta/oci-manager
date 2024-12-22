resource "oci_core_security_list" "core_security_list" {
  compartment_id = var.compartment_id
  vcn_id         = oci_core_vcn.core_vcn.id
  display_name   = var.security_list_display_name

  ingress_security_rules {
    protocol  = var.ingress_protocol[0]
    source    = var.ingress_source_cidr_block
    stateless = false
  }

  ingress_security_rules {
    protocol = var.ingress_protocol_tcp
    source   = var.ingress_source_cidr_block

    tcp_options {
      max = 22
      min = 22
    }
  }

  # ingress_security_rules {
  #   protocol = var.ingress_protocol
  #   source = var.ingress_source_cidr_block
  #   stateless = false

  #   tcp_options {
  #     min = 80
  #     max = 80
  #   }
  # }

  egress_security_rules {
    protocol    = var.egress_protocol[0]
    destination = var.egress_source_cidr_block
  }
}
