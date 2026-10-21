variable "name_prefix" {
  type = string
}
variable "aws_region" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "container_image" {
  type = string
}
variable "container_port" {
  type = number
}
variable "desired_count" {
  type = number
}
variable "max_count" {
  type = number
}
