locals {
  suffix_max_byte_length = 8

  table_name_max_length = 255
  table_name_prefix     = "${var.product_domain}-idgen-seed-"

  table_name_suffix_max_byte_length = "${(local.table_name_max_length - length(local.table_name_prefix)) / 2}"
  table_name_suffix_byte_length     = "${min(local.suffix_max_byte_length, local.table_name_suffix_max_byte_length)}"
}

resource "random_id" "table_name" {
  prefix       = "${local.table_name_prefix}"
  byte_length  = "${local.table_name_suffix_byte_length}"
}

resource "aws_dynamodb_table" "idgen_seed_dynamodb_table" {
  name           = "${random_id.table_name.hex}"
  hash_key       = "id"
  write_capacity = "${var.write_capacity}"
  read_capacity  = "${var.read_capacity}"

  attribute {
    name = "id"
    type = "N"
  }

  tags {
    Description   = "The DynamoDB table for storing idgen seed"
    Environment   = "${var.environment}"
    Name          = "${random_id.table_name.hex}"
    ProductDomain = "${var.product_domain}"
  }
}
