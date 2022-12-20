
providers "aws"{
region = "us-east-1"
}

resource "aws_instance" "AWSInstance"{
ami = "ami-010d564ad44bd1912"
instance_type = "t2.micro"
key_name = "Key_Ec2.pem"
security_group = ["launch-wizard-24"]

tags{
Name = "tomcatservers"

}

}
