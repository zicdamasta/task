resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.public-subnet.id
  private_ips = ["10.0.10.10"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_network_interface" "bar" {
  subnet_id   = aws_subnet.private-subnet.id
  private_ips = ["10.0.1.10"]

  tags = {
    Name = "private_network_interface"
  }
}

resource "aws_volume_attachment" "ebs_attach_1" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.volume1.id
  instance_id = aws_instance.foo.id
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdg"
  volume_id   = aws_ebs_volume.volume2.id
  instance_id = aws_instance.foo.id
}

resource "aws_instance" "foo" {
  ami           = "ami-0c1bebf6df0bafa23" # eu-west-1, 20.04 LTS, amd64, hvm:ebs-ssd
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  network_interface {
    network_interface_id = aws_network_interface.bar.id
    device_index         = 1
  }
}
