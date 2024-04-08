resource "aws_security_group" "projets-bean-elb-sg" {
  name = "Projects-bean-elb-sg"
  description = "Security group for bean-elb"
  vpc_id = module.vpc.vpc_id
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]

  }
}
resource "aws_security_group" "projects-bastion-sg" {
  name = "projects-bastion-sg"
  description = "Security group ec2 instance"
  vpc_id = module.vpc.vpc_id
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]

  }
}
resource "aws_security_group" "projects-prod-sg" {
  name        = "projects-prod-sg"
  description = "Security group benstalk instance"
  vpc_id      = module.vpc.vpc_id
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = 22
    protocol        = "tcp"
    to_port         = 22
    security_groups = [aws_security_group.projects-bastion-sg.id]
  }
}
resource "aws_security_group" "projects-backend-sg" {
  name        = "projects-backend-sg"
  description = "Security group RDS,active mq ecache"
  vpc_id      = module.vpc.vpc_id
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port       = 22
    protocol        = "tcp"
    to_port         = "22"
    security_groups = [aws_security_group.projects-prod-sg.id]

  }
}
resource "aws_security_group_rule" "sec_group_allow_itself" {
  from_port         = 0
  protocol          = "tcp"
  security_group_id = aws_security_group.projects-backend-sg.id
  source_security_group_id = aws_security_group.projects-backend-sg.id
  to_port           = 65535
  type              = "ingress"
}
