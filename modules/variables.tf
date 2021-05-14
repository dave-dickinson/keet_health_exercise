variable "name" {
  description = "Name to be used on all resources as prefix"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default = "t3a.nano"
}

variable "keyPath" {
  description = "path for the ssh key to use. It must already exist in the aws console"
  type = string
}

variable "keyName" {
  description = "name of the aws key that exists in the console"
  type = string
}

#TODO encapsulate the rest in a module and call it. Then write the readme
