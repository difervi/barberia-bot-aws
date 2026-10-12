resource "random_id" "bucket_suffix" {
  byte_length = 4
}

data "oci_objectstorage_namespace" "ns" {
  compartment_id = var.compartment_ocid
}
resource "oci_objectstorage_bucket" "tf_state" {
  compartment_id = var.compartment_ocid
  name           = "${var.project_name}-tfstate-${random_id.bucket_suffix.hex}"
  namespace      = data.oci_objectstorage_namespace.ns.namespace

  versioning   = "Enabled"
  access_type  = "NoPublicAccess"
  storage_tier = "Standard"
  freeform_tags = {
    Project     = "barberia-bot"
    Environment = "bootstrap"
    ManagedBy   = "terraform"
  }
}
