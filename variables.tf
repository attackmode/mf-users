variable "dev-user" {
  type = "list"
  default = ["nevsa-dev","cordelia-dev","kriste-dev","darleen-dev","wynnie-dev","vonnie-dev","emelita-dev","maurita-dev","devinne-dev","breena-dev"]
}

variable "qa-user" {
  type = "list"
  default = ["nevsa-qa","cordelia-qa","kriste-qa","darleen-qa","wynnie-qa","vonnie-qa","emelita-qa","maurita-qa","devinne-qa","breena-qa"]
}

variable "uat-user" {
  type = "list"
  default = ["nevsa-uat","cordelia-uat","kriste-uat","darleen-uat","wynnie-uat","vonnie-uat","emelita-uat","maurita-uat","devinne-uat","breena-uat"]
}

variable "test-user" {
  type = "list"
  default = ["nevsa-test","cordelia-test","kriste-test","darleen-test","wynnie-test","vonnie-test","emelita-test","maurita-test","devinne-test","breena-test"]
}

variable "prod-user" {
  type = "list"
  default = ["nevsa-prod","cordelia-prod","kriste-prod","darleen-prod","wynnie-prod","vonnie-prod","emelita-prod","maurita-prod","devinne-prod","breena-prod"]
}

variable "region" {
  default = "eu-west-1"
}
