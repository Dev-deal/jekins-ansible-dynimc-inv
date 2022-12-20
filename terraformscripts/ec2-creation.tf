provider "aws"{
   region  = "us-east-1" 
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 2
     ami = "ami-010d564ad44bd1912"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-24"]
     key_name        = "Key_Ec2.pem"
     tags = {
        Name = "tomcatservers"
     }
}

