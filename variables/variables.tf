variable "ami_id" {
  type    = string
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t2.micro"
  type    = string
}

variable "tags" {
  type = map
  default = {
    Name = "Hello Terraform"
    Project = "Roboshop"
    Environment = "DEV"
    Component = "Web"
    Terraform = "true"
  }
}


variable "sg-name" {
  type = string
  default = "roboshop-all"
}


variable "sg-description" {
  type = string
  default = "Allowing all ports"
}

variable "inbound-from-port" {
  type = number
  default = 0
}

variable "cidr_blocks"{
  type = list(any)
  default = ["0.0.0.0/0"]
}



# terraform.tfvars is used to override the default values present in variables.

# to run from cmd - overrides terraform.tfvars file
# terraform plan -var="instance_type=t3.medium"

# terraform plan -var-file="roboshop.tfvars"

# env variable
# export TF_VAR_instanc_type=t3.xlarge
# terraform plan 


#1st pref is command line, then -var-file, then terraform.tfvars, 
# then env variable, then prompts for value in cmd.
