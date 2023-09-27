resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0bde49699ad6e2424"]

  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z03665552INK97CUQ6WQD"
  name    = "frontend.kdevopsb26.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.frontend.private_ip ]
}

resource "aws_instance" "backend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0bde49699ad6e2424"]

  tags = {
    Name = "backend"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z03665552INK97CUQ6WQD"
  name    = "backend.kdevopsb26.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.backend.private_ip ]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0bde49699ad6e2424"]

  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z03665552INK97CUQ6WQD"
  name    = "mysql.kdevopsb26.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.mysql.private_ip ]
}