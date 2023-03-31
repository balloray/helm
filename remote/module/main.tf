## The remote chart deployment 
resource "helm_release" "remote_helm_deployment" {
  name                = var.chart_name
  chart               = var.chart_path
  namespace           = var.chart_namespace
  timeout             = var.timeout
  recreate_pods       = var.recreate_pods
  version             = var.chart_version
  repository          = var.chart_repo
  values = [
    var.chart_override_values
  ]
}

# resource "helm_release" "local_helmdeployment" {
#   name                = var.chart_name
#   chart               = var.chart_path
#   timeout             = var.timeout
#   recreate_pods       = var.recreate_pods
#   values = [
#     var.chart_override_values
#   ]
# }
