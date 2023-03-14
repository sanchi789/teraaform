variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "access_key" {
    description = "access_key"
    type = string
    default = "##################"
}


variable "secret_key" {
    description = "secret_key"
    type = string
    default = "##########################"
}

variable "user_data" {
  type = string
  default = "ott_ubun.sh"
  
}
