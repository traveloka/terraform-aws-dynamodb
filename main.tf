resource "random_string" "random_id" {
  length  = 16
  special = false
  upper   = false
}

resource "aws_dynamodb_table" "idgen-seed-dynamodb-table" {
  name           = "${var.product_domain}-idgen-seed-${random_string.random_id.result}"
  hash_key       = "id"
  write_capacity = "${var.write_capacity}"
  read_capacity  = "${var.read_capacity}"

  attribute {
    name = "id"
    type = "N"
  }

  attribute {
    name = "lockedBy"
    type = "S"
  }

  attribute {
    name = "lockedUntil"
    type = "N"
  }

  tags {
    Name          = "${var.product_domain}-idgen-seed-${random_string.random_id.result}"
    ProductDomain = "${var.product_domain}"
  }
}
