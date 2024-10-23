variable "my_type" {
  type    = string
  default = "t2.micro"
}

variable "my_key" {
  type    = string
  default = "terraformkey"
}

variable "my_region" {
  type    = string
  default = "us-east-1"
}

variable "my_cidr" {
  default = "10.0.0.0/16"
  type    = string
}

variable "business_division" {
  default = "MNGT"
}

variable "team" {
  default = "Cloud"
}

variable "app" {
  default = "Ops"
}