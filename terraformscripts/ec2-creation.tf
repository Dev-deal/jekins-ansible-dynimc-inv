
provider "aws"{
region = "us-east-1"
}

resource "aws_instance" "AWSServer"{
ami = "ami-08e637cea2f053dfa"
instance_type = "t2.micro"
key_name = "Key_Ec2.pem"
security_groups = ["launch-wizard-24"]

tags = {
  Name= "tomcatservers"}


}
