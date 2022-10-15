output "kubernetes_cluster_name" {
  value       = google_container_cluster.kubernetes.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.kubernetes.endpoint
  description = "GKE Cluster Host"
}
