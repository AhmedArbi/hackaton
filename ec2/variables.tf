variable "app_name" {
  type        = string
  description = "Specify the application's name."
}
variable "account_name" {
  type        = string
  description = "Specify the environment's name."
}

variable "ami" {
  type        = string
  description = "Amazon machine image id "
}

variable "instance_type" {
  type        = string
  description = "Instance family ie : t2.micro "
}

variable "key_name" {
  type        = string
  description = "SSH key name to access the instance"
}

