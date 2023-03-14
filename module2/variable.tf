variable "ami" {
  type          = string
  default       = "ami-0d81306eddc614a45"
}

variable "instance_type" {
  type          = string
  default       = "t2.micro"
}

variable "instance_name" {
  description   = "Value of the Name tag for the EC2 instance"
  type          = string
  default       = "amazon_linux"
}

variable "key_name" {
  type          = string
  default       = "keyp"
}
variable "userdata_file_path" {
  type = string
  default = "script.sh"
}