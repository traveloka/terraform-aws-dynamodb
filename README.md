terraform-aws-dynamodb-idgen-seed
========================================

Terraform module which creates a DynamoDB table for idgen-seed.

Usage
-----

```hcl
module "idgen-seed-dynamodb-table" {
  source  = "github.com/traveloka/terraform-aws-dynamodb-idgen-seed"
  version = "0.1.0"

  product_domain = "bei"
  environment    = "production"
}
```

Authors
-------

- [Andy Saputra](https://github.com/andysaputra)

License
-------

Apache 2 Licensed. See LICENSE for full details.
