data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}
resource "aws_security_group" "sg" {
  vpc_id = "vpc-02069affe439349c5"
  name   = "${var.project_name}-sg"
  tags = {
    Name = "${var.project_name}-sg"
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_key_pair" "bot_key" {
  public_key = file("~/.ssh/barberia_bot.pub")
  key_name   = "${var.project_name}-key"
}
resource "aws_instance" "bot_ec2" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = "subnet-002341d825d21d069"
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name               = aws_key_pair.bot_key.key_name

  tags = {
    Name = "${var.project_name}-ec2"
  }
}



