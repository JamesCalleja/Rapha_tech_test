output "app_url" {
  value       = "http://${aws_lb.rapha_nlb.dns_name}"
  sensitive   = false
  description = "URL to reach the app"
}
