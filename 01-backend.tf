# Backend for the Terraform state file
terraform {
  backend "gcs" {
    bucket = "sovereign_1"
    prefix = "terraform/state"
  }
}

resource "google_compute_disk" "grafana_disk" {
  name = "grafana-disk"
  type = "pd-standard"
  zone = var.zone
  size = 10
}