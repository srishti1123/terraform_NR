module "dynamic" {
  source ="./dash_dynamic"
  dashboard_name = var.dashboard_name
  page_name = var.page_name
  permissions = var.permissions
  billboard = var.billboard
  table= var.table
  line = var.line
  bar =var.bar
  markdown =var.markdown
}