variable "ami" {
  type          = string
  default       = "ami-0f8ca728008ff5af4"
}

variable "instance_type" {
  type          = string
  default       = "t2.micro"
}

variable "instance_name" {
  description   = "Value of the Name tag for the EC2 instance"
  type          = string
  default       = "ubuntu1"
}

variable "key_name" {
  type          = string
  default       = "keyp"
}

variable "userdata_file_path" {
  type = string
  default = "script.sh"
}