variable "is_prod" {
  type = bool
  default = false
}

variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "zone_id" {
  default = "Z02333473VXA3Y3PIS5N4"
}

variable "domain_name" {
  default = "appalla.shop"
}