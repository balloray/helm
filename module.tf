module "chart" {
  source                  = "github.com/balloray/helm-chart/module"
  chart_name              = "external-dns"
  chart_path              = "external-dns"
  chart_version           = "6.1.4" 
  chart_repo             = "https://charts.bitnami.com/bitnami"
  chart_override_values   = <<EOF
provider: google
EOF
}
