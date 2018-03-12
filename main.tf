resource "random_string" "random_id" {
  length  = 16
  special = false
  upper   = false
}

resource "aws_dynamodb_table" "idgen_seed_dynamodb_table" {
  name           = "${var.product_domain}-idgen-seed-${random_string.random_id.result}"
  hash_key       = "id"
  write_capacity = "${var.write_capacity}"
  read_capacity  = "${var.read_capacity}"

  attribute {
    name = "id"
    type = "N"
  }

  tags {
    Description   = "${var.description}"
    Environment   = "${var.environment}"
    Name          = "${var.product_domain}-idgen-seed-${random_string.random_id.result}"
    ProductDomain = "${var.product_domain}"
    Service       = "${var.service_name}"
  }
}
