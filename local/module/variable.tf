variable "chart_name" {
  description = "-(Required) The name of the deployment"
  default     = "external-dns"
}

variable "chart_path" {
  default     = "external-dns"
  description = "-(Required) Chart location or chart name <stable/example>"
}

variable "chart_version" {
  description = "-(Optional) Specify the exact chart version to install"
  default     = "17.0.37"
}

variable "chart_repo" {
  default     = "https://charts.bitnami.com/bitnami"
  description = "-(Optional) Provide the remote helm charts repository."
}

variable "timeout" {
  default = "400"
}

variable "recreate_pods" {
  type        = bool
  default     = false
}

variable "chart_override_values" {
  description = "-(Optional)"
  default     = <<EOF
provider: google
EOF
}
