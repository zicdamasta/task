resource "aws_ebs_volume" "volume1" {
  availability_zone = "eu-west-1a"
  size              = 1

  tags = {
    Name = "ebs-volume-1"
  }
}

resource "aws_ebs_volume" "volume2" {
  availability_zone = "eu-west-1a"
  size              = 1

  tags = {
    Name = "ebs-volume-2"
  }
}