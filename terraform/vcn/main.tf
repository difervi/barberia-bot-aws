resource "oci_core_vcn" "barber_vnc" {
  compartment_id = var.compartment_ocid
  cidr_blocks = var.cidr_blocks
  dns_label = var.vcn_dns_label
  display_name = var.vcn_display_name
  freeform_tags = {"Environment"= "Testing"}
}