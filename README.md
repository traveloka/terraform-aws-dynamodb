AWS DynamoDB idgen-seed Terraform module
========================================
Terraform module which creates a DynamoDB table for idgen-seed.

Variables
---------

- **description** - (Optional, Default: "The DynamoDB table for storing idgen seed") The description of this DynamoDB table.

- **environment** - (Required) The environment this DynamoDB table belongs to.

- **product_domain** - (Required) The name of the product domain. This will become the prefix of the table name.

- **read_capacity** - (Optional, Default: 1) The read capacity of the table.

- **service_name** - (Optional, Default: "idgen-seed") The name of the service this DynamoDB table belongs to.

- **write_capacity** - (Optional, Default: 5) The write capacity of the table.

Outputs
---------
- **arn** - The arn of the table.

- **id** - The name of the table.

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
