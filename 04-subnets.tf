# Create a subnet in the VPC network
resource "google_compute_subnetwork" "subnet" {
  name                     = var.subnet_name
  ip_cidr_range            = var.subnet_cidr
  region                   = var.region
  network                  = google_compute_network.vpc.id
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = var.secondary_range_names[var.vpc_name][0]
    ip_cidr_range = var.secondary_range_cidrs[var.vpc_name][0]
  }

  depends_on = [
    google_compute_network.vpc,
  ]
}

