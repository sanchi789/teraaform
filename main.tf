provider "aws" {
  region     = var.aws_region
  access_key =  var.access_key
  secret_key =  var.secret_key
} 

module "ubu1" {
  source = "./modules"
  
}
module "ubu2" {
  source = "./modules"
  
}


module "amazon_linux" {
  source = "./module2"
}

