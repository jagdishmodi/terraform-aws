
resource "aws_instance" "dev" {
   ami = data.aws_ami.amzlinux2.id
   instance_type = "t2.micro"
   tags = {
     Name = "lab-${terraform.workspace}"
   }
}