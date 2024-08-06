module "dynamic" {
  source         = "./dash_dynamic"
  pages          = var.pages
  dashboard_name = var.dashboard_name
  permissions    = var.permissions
}