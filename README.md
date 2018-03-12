AWS DynamoDB idgen-seed Terraform module
========================================
Terraform module which creates a DynamoDB table for idgen-seed.

Variables
---------

### Required

##### product_domain
Description: The name of the product domain. This will become the prefix of the table name.

##### service_name
Description: The name of the service this DynamoDB table belongs to.

##### environment
Description: The environment this DynamoDB table belongs to.

##### description
Description: The description of this DynamoDB table.

### Optional

##### write_capacity
Description: The write capacity of the table.\
Default: 5

##### read_capacity
Description: The read capacity of the table.\
Default: 1

Outputs
---------

##### id
Description: The name of the table.

##### arn
Description: The arn of the table.

Usage
-----

```hcl
module "idgen-seed-dynamodb-table" {
  source         = "github.com/traveloka/terraform-aws-dynamodb-idgen-seed?ref=master"
  product_domain = "bei"
  service_name   = "beibc"
  environment    = "special"
  description    = "The idgen-seed table for domain bei"

  # Optional
  write_capacity = 5
  read_capacity  = 1
}
```

Authors
-------

- [Andy Saputra](https://github.com/andysaputra)

License
-------

Apache 2 Licensed. See LICENSE for full details.
