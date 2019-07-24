variable "environment-profile-mapping" {
  type = "map"

  default = {
    "co" = ""
    "dv" = "AWSDevnew"
    "st" = ""
    "pd" = ""
  }
}

variable "environment-region-mapping" {
  type = "map"

  default = {
    "co" = "us-west-2"
    "dv" = "us-west-2"
    "st" = "us-west-2"
    "pd" = "us-west-2"
  }
}

variable "environment-account-id-mapping" {
  type = "map"

  default = {
    "co" = ""
    "dv" = ""
    "st" = ""
    "pd" = ""
  }
}

variable "environment-account-mapping" {
  type = "map"

  default = {
    "co" = ""
    "dv" = ""
    "st" = ""
    "pd" = ""
  }
}

variable "environment-vpc-id-mapping" {
  type = "map"

  default = {
    "dv" = "vpc-00000000000000000"
    "st" = "vpc-00000000000000000"
    "pd" = "vpc-00000000000000000"
  }
}

variable "vpc-id-cidr-base-mapping" {
  type = "map"

  default = {
    "vpc-00000000000000000" = "172.16" # dv
    "vpc-00000000000000000" = "172.23" # st
    "vpc-00000000000000000" = "172.31" # pd
  }
}

variable "environment-to-cidr-mapping" {
  type = "map"

  default = {
    "dv" = "172.30.0.0/16"
    "st" = "10.96.0.0/16"
    "pd" = "172.16.0.0/16"
  }
}

variable "environment-short-to-long-name-mapping" {
  type = "map"

  default = {
    "co" = "corporate"
    "dv" = "development"
    "st" = "staging"
    "pd" = "production"
  }
}

variable "region-elb-account-mapping" {
  type = "map"

  default = {
    "us-east-1"      = "127311923021"
    "us-east-2"      = "033677994240"
    "us-west-1"      = "027434742980"
    "us-west-2"      = "797873946194"
    "ca-central-1"   = "985666609251"
    "eu-central-1"   = "054676820928"
    "eu-west-1"      = "156460612806"
    "eu-west-2"      = "652711504416"
    "eu-west-3"      = "009996457667"
    "ap-northeast-1" = "582318560864"
    "ap-northeast-2" = "600734575887"
    "ap-northeast-3" = "383597477331"
    "ap-southeast-1" = "114774131450"
    "ap-southeast-2" = "783225319266"
    "ap-south-1"     = "718504428378"
    "sa-east-1"      = "507241528517"
  }
}

variable "elb-logs-bucket" {
  default = "<>-elb-logs"
}

variable "env-to-elb-logging-bucket-map" {
  type = "map"

  default = {
    "dv" = "<>-dv-elb-logs-us-west-2"
    "st" = "<>-st-elb-logs-us-west-2"
    "pd" = "<>-pd-elb-logs-us-west-2"
  }
}

variable "region-az-count-mapping" {
  type = "map"

  default = {
    "us-west-1"    = 3
    "us-west-2"    = 3
    "us-east-1"    = 6
    "us-east-2"    = 3
    "eu-west-1"    = 3
    "eu-west-2"    = 3
    "eu-central-1" = 3
  }
}

variable "number-to-letter-mapping" {
  type = "map"

  default = {
    "0" = "a"
    "1" = "b"
    "2" = "c"
    "3" = "d"
    "4" = "e"
    "5" = "f"
  }
}

variable "env-to-ssl-cert-arn-mapping" {
  type = "map"

  default = {
    "co" = "arn:aws:acm:us-west-2:000000000000:certificate/00000000-0000-0000-0000-000000000000"
    "dv" = "arn:aws:acm:us-west-2:000000000000:certificate/00000000-0000-0000-0000-000000000000"
    "st" = "arn:aws:acm:us-west-2:000000000000:certificate/00000000-0000-0000-0000-000000000000"
    "pd" = "arn:aws:acm:us-west-2:000000000000:certificate/00000000-0000-0000-0000-000000000000"
  }
}

variable "env-to-dns-suffix-mapping" {
  type = "map"

  default = {
    "co" = "co.example.com."
    "dv" = "dv.example.com."
    "st" = "st.example.com."
    "pd" = "pd.example.com."
  }
}

variable "env-to-dns-hosted-zone-mapping" {
  type = "map"

  default = {
    "co" = ""
    "dv" = ""
    "st" = ""
    "pd" = ""
  }
}

variable "vpc-id-to-internet-gateway-id-mapping" {
  type = "map"

  default = {
    "vpc-00000000000000000" = "igw-00000000000000000" # dv
    "vpc-00000000000000000" = "igw-00000000000000000" # st
    "vpc-00000000000000000" = "igw-00000000000000000" # pd
  }
}

variable "vpc-id-to-security-group-mapping" {
  type = "map"

  default = {
    "vpc-00000000000000000" = "sg-00000000000000000" # dv
    "vpc-00000000000000000" = "sg-00000000000000000" # st
    "vpc-00000000000000000" = "sg-00000000000000000" # pd
  }
}

variable "env-to-consul-mapping" {
  type = "map"

  default = {
    "dv" = "consul.dv.example.com:8500"
    "st" = "consul.st.example.com:8500"
    "pd" = "consul.pd.example.com:8500"
  }
}

variable "env-to-jumpbox-security-group-mapping" {
  type = "map"

  default = {
    "dv" = "sg-00000000000000000"
    "st" = "sg-00000000000000000"
    "pd" = "sg-00000000000000000"
  }
}

variable "env-to-logs-bucket-arn-mapping" {
  type = "map"

  default = {
    "dv" = "arn:aws:s3:::<>-dv-data-lake"
    "st" = "arn:aws:s3:::<>-st-data-lake"
    "pd" = "arn:aws:s3:::<>-pd-data-lake"
  }
}

variable "env-to-gateway-security-group" {
  type = "map"

  default = {
    "dv" = "sg-00000000000000000"
    "st" = "sg-00000000000000000"
    "pd" = "sg-00000000000000000"
  }
}

variable "env-to-service1-vpc-cidr-block" {
  type = "map"
  
  default = {
    "dv" = "172.16.0.0/16"
    "st" = "172.21.0.0/16"
    "pd" = "172.31.0.0/16"
  }
}

variable "env-to-service1-security-group-mapping" {
  type = "map"

  default = {
    "dv" = "sg-00000000000000000"
    "st" = "sg-00000000000000000"
    "pd" = "sg-00000000000000000"
  }
}

variable "service1-vpc-cidr-block" {
  type = "map"
  
  default = {
    "dv" = []
    "st" = [
      "10.0.80.0/21",
      "10.0.88.0/21",
      "10.0.96.0/21"
    ]
    "pd" = []
  }
}

variable "service1-peering-connection-id" {
  type = "map"
  
  default = {
    "dv" = []
    "st" = [
      "pcx-00000000000000000",
      "pcx-00000000000000000",
      "pcx-00000000000000000"
    ]
    "pd" = []
  }
}
