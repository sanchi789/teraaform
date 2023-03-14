variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "access_key" {
    description = "access_key"
    type = string
    default = "AKIAYHKJKYGM4HZFLHES"
}


variable "secret_key" {
    description = "secret_key"
    type = string
    default = "ZNgGPUJr5M9BOKntYWGNyji/4Uny3Qcd2fM4gc3s"
}

variable "user_data" {
  type = string
  default = "ott_ubun.sh"
  
}