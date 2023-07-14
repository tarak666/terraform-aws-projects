variable AWS_REGION {
  default = "us-east-1"
  }

 variable AMIS {
 type = map
 default = {
    us-east-1 = "ami-0261755bbcb8c4a84"
    us-east-2 = "ami-0261755bbcb8c4a85"
    ap-south-1 = "ami-0261755bbcb8c4a86"
 }
 }

 variable PRIV_KEY_PATH {
  default = "tarakterra"
 }

 variable PUB_KEY_PATH {
 default = "tarakterra.pub"
 }

 variable USERNAME {
 default = "ubuntu"
 }

variable MYIP {
default = "0.0.0.0/0"
}
variable rmquser {
  default = "rabbit"
}
variable rmpass {
default = "Nishitha$666$"
}
variable dbuser {
 default = "admin"
}
variable dbpass {
 default = "admin123"
}

variable dbname {
  default = "accounts"
}
variable instance_count {
 default = "1"
}
variable VPC_NAME {
 default = "Projectr-VPC"
}
variable Zone1 {
default = "us-east-2a"
}
variable Zone2 {
default = "us-east-2b"
}
variable Zone3 {
default = "us-east-2c"
}

variable VpcCIDR {
  default = "170.21.0.0./16"
}
variable PubSub1CIDR {
  default = "170.21.1.0/16"
}
variable PubSub2CIDR {
  default = "170.21.2.0/16"
}
variable PubSub3CIDR {
  default = "170.21.3.0/16"
}
variable PrivSub1CIDR {
default = "172.21.4.0/24"
}
variable PrivSub2CIDR {
default = "172.21.5.0/24"
}
variable PrivSub3CIDR {
default = "172.21.6.0/24"
}