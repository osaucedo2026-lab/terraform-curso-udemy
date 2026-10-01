resource "aws_vpc" "vpc_virginia" {
  cidr_block = var.virginia_cidr
  tags = {
    Name = "vpc-virginia-${local.sufix}"
  }
}
resource "aws_subnet" "public_subnet_virginia" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.list_subnet[0]
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1d"
  tags = {
    Name = "public-subnet-virginiav"
  }
}
resource "aws_subnet" "private_subnet_virginia" {
  vpc_id                  = aws_vpc.vpc_virginia.id
  cidr_block              = var.list_subnet[1]
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet-virginia-${local.sufix}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_virginia.id

  tags = {
    Name = "igww vpc virginia-${local.sufix}"
  }
}

resource "aws_route_table" "public_crt" {
  vpc_id = aws_vpc.vpc_virginia.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public crt-${local.sufix}"
  }
}

resource "aws_route_table_association" "public_rta" {
  subnet_id      = aws_subnet.public_subnet_virginia.id
  route_table_id = aws_route_table.public_crt.id
}



resource "aws_security_group" "sg_public_instance" {
  name        = "public instance SG"
  description = "Allow SSH and ALL ingress traffic"
  vpc_id      = aws_vpc.vpc_virginia.id


  dynamic "ingress" {
    for_each = var.ingress_port_list
    content {
      description = "Allow ingress traffic on port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.sg_ingress_cidr]
    }
  }

  # ingress {
  #   description = "SSH over internet"
  #   from_port   = 22
  #   to_port     = 22
  #   protocol    = "tcp"
  #   cidr_blocks = [var.sg_ingress_cidr]
  # }

  # ingress {
  #   description = "HTTP over internet"
  #   from_port   = 80
  #   to_port     = 80
  #   protocol    = "tcp"
  #   cidr_blocks = [var.sg_ingress_cidr]
  # }

  # ingress {
  #   description = "HTTPS over internet"
  #   from_port   = 443
  #   to_port     = 443
  #   protocol    = "tcp"
  #   cidr_blocks = [var.sg_ingress_cidr]
  # }

  egress {
    description      = "Allow all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "public instance SG-${local.sufix}"
  }

}