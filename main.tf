data "aws_vpc" "selected" {
 id  = "vpc-0e102acbb318c2711"
}

data "aws_subnet" "selected" {
  id = "subnet-01eb01ea8857bd6c4"
}

resource "aws_instance" "Amazon_Linux2" {
  ami             = "ami-00eb20669e0990cb4"
  instance_type   = "t2.micro"
  subnet_id = data.aws_subnet.selected.id
  security_groups = ["sg-07680b226bccc2158"]
  tags = {
    Name = "webserver"
  }
}

