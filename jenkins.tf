resource "aws_instance" "jenkins" {
  ami           = "ami-04a81a99f5ec58529"
  instance_type = "t2.xlarge"
  vpc_security_group_ids = [ "sg-09e9185eb191ab567" ]
  subnet_id = "subnet-04495462532f9fad5"
  key_name = "learnandcode"
  user_data_base64 = file("${path.module}/jenkins-script.sh")
  tags = {
    Name = "Jenkins-Server"
  }
}