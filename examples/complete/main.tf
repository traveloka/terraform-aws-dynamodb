provider "aws" {
  region = "ap-southeast-1"
}

module "idgen_seed" {
  source = "../../"

  product_domain = "bei"
  environment    = "special"
}
