module "chart" {
  source                  = "github.com/balloray/helm-chart/module"
  chart_name              = "external-dns"
  chart_path              = "external-dns"
  chart_override_values   = <<EOF
provider: google
EOF
}
