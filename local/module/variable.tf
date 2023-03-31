variable "chart_name" {
  description = "-(Required) The name of the deployment"
  default     = "external-dns"
}

variable "chart_path" {
  default     = "external-dns"
  description = "-(Required) Chart location or chart name <stable/example>"
}

variable "chart_namespace" {
  default = "400"
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
