output "environment-profile-mapping" {
  value = "${var.environment-profile-mapping}"
}

output "environment-region-mapping" {
  value = "${var.environment-region-mapping}"
}

output "environment-account-mapping" {
  value = "${var.environment-account-mapping}"
}

output "environment-account-id-mapping" {
  value = "${var.environment-account-id-mapping}"
}

output "environment-short-to-long-name-mapping" {
  value = "${var.environment-short-to-long-name-mapping}"
}

output "environment-to-cidr-mapping" {
  value = "${var.environment-to-cidr-mapping}"
}

output "stage" {
  value = "${substr(terraform.workspace, 0, 2)}"
}

output "env" {
  value = "${element(split("-", terraform.workspace), 0)}"
}

output "region" {
  value = "${join("-", slice(split("-", terraform.workspace), 1, length(split("-", terraform.workspace))))}"
}

output "region-elb-account-mapping" {
  value = "${var.region-elb-account-mapping}"
}

output "elb-logs-bucket" {
  value = "${var.elb-logs-bucket}"
}

output "env-to-elb-logging-bucket-map" {
  value = "${var.env-to-elb-logging-bucket-map}"
}

output "region-az-count-mapping" {
  value = "${var.region-az-count-mapping}"
}

output "number-to-letter-mapping" {
  value = "${var.number-to-letter-mapping}"
}

output "environment-vpc-id-mapping" {
  value = "${var.environment-vpc-id-mapping}"
}

output "vpc-id-cidr-base-mapping" {
  value = "${var.vpc-id-cidr-base-mapping}"
}

output "env-to-ssl-cert-arn-mapping" {
  value = "${var.env-to-ssl-cert-arn-mapping}"
}

output "env-to-dns-suffix-mapping" {
  value = "${var.env-to-dns-suffix-mapping}"
}

output "env-to-dns-hosted-zone-mapping" {
  value = "${var.env-to-dns-hosted-zone-mapping}"
}

output "env-to-consul-mapping" {
  value = "${var.env-to-consul-mapping}"
}

output "vpc-id-to-internet-gateway-id-mapping" {
  value = "${var.vpc-id-to-internet-gateway-id-mapping}"
}

output "vpc-id-to-security-group-mapping" {
  value = "${var.vpc-id-to-security-group-mapping}"
}

output "env-to-jumpbox-security-group-mapping" {
  value = "${var.env-to-jumpbox-security-group-mapping}"
}

output "env-to-logs-bucket-arn-mapping" {
  value = "${var.env-to-logs-bucket-arn-mapping}"
}
