# Router for the VPC
resource "google_compute_router" "router" {
  name    = "main-router"
  region  = var.region
  network = google_compute_network.vpc.id

  bgp {
    asn = var.router_asn
  }

  depends_on = [
    google_compute_network.vpc,
  ]
}