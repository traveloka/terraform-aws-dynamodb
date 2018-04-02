resource "random_id" "suffix" {
  byte_length  = 8
}

resource "aws_dynamodb_table" "idgen_seed_dynamodb_table" {
  name           = "${var.product_domain}-idgen-seed-${random_id.suffix.hex}"
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
    Name          = "${var.product_domain}-idgen-seed-${random_id.suffix.hex}"
    ProductDomain = "${var.product_domain}"
  }
}
