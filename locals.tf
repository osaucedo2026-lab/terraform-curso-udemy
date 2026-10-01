locals {
  sufix = var.tags_project_genericos.project
}

resource "random_string" "sufijo-s3" {
  length  = 8
  special = false
  upper   = false
}
locals {
  s3-sufix = "${var.tags_project_genericos.project}-${random_string.sufijo-s3.id}"
}