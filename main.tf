provider "aws" {
  region = "${var.region}"
}

#dev users
resource "aws_iam_user" "dev-users" {
  count = "${length(var.dev-user)}"
  name  = "${element(var.dev-user,count.index)}"
}
resource "aws_iam_access_key" "dev-users" {
  count = "${length(var.dev-user)}"
  user  = "${element(var.dev-user,count.index)}"
}


#qa users
resource "aws_iam_user" "qa-users" {
  count = "${length(var.qa-user)}"
  name  = "${element(var.qa-user,count.index)}"
}
resource "aws_iam_access_key" "qa-users" {
  count = "${length(var.qa-user)}"
  user  = "${element(var.qa-user,count.index)}"
}

#uat users
resource "aws_iam_user" "uat-users" {
  count = "${length(var.uat-user)}"
  name  = "${element(var.uat-user,count.index)}"
}
resource "aws_iam_access_key" "uat-users" {
  count = "${length(var.uat-user)}"
  user  = "${element(var.uat-user,count.index)}"
}

#test users
resource "aws_iam_user" "test-users" {
  count = "${length(var.test-user)}"
  name  = "${element(var.test-user,count.index)}"
}
resource "aws_iam_access_key" "test-users" {
  count = "${length(var.test-user)}"
  user  = "${element(var.test-user,count.index)}"
}

#prod users
resource "aws_iam_user" "prod-users" {
  count = "${length(var.prod-user)}"
  name  = "${element(var.prod-user,count.index)}"
}
resource "aws_iam_access_key" "prod-users" {
  count = "${length(var.prod-user)}"
  user  = "${element(var.prod-user,count.index)}"
}

output "user-data-dev" {
  value       = aws_iam_access_key.dev-users.*
  description = "Dev user data"
}
output "user-data-qa" {
  value       = aws_iam_access_key.qa-users.*
  description = "Qa user data"
}
output "user-data-uat" {
  value       = aws_iam_access_key.uat-users.*
  description = "Uat user data"
}
output "user-data-test" {
  value       = aws_iam_access_key.test-users.*
  description = "Test user data"
}
output "user-data-prod" {
  value       = aws_iam_access_key.prod-users.*
  description = "Prod user data"
}
