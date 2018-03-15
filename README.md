terraform-aws-dynamodb-idgen-seed
========================================

Terraform module which creates a DynamoDB table for idgen-seed.

Usage
-----

```hcl
module "idgen-seed-dynamodb-table" {
  source         = "github.com/traveloka/terraform-aws-dynamodb-idgen-seed?ref=master"
  product_domain = "bei"
  environment    = "prod"

  # Optional
  write_capacity = 5
  read_capacity  = 1
  service_name   = "beibc"
  description    = "The idgen-seed table for domain bei"
}
```

Authors
-------

- [Andy Saputra](https://github.com/andysaputra)

License
-------

Apache 2 Licensed. See LICENSE for full details.
