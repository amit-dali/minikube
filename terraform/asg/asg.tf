provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_autoscaling_group" "minikube-asg" {
  availability_zones   = ["${split(",", var.availability_zones)}"]
  name                 = "minikube-asg"
  max_size             = "${var.asg_max}"
  min_size             = "${var.asg_min}"
  desired_capacity     = "${var.asg_desired}"
  force_delete         = true
  launch_configuration = "${aws_launch_configuration.minikube-lc.name}"
  tag {
    key                 = "Name"
    value               = "minikube-asg"
  }
}

resource "aws_launch_configuration" "minikube-lc" {
  name          = "minikube-lc"
  image_id      = "${lookup(var.aws_amis, var.aws_region)}"
  instance_type = "${var.instance_type}"

  security_groups = ["${aws_security_group.default.id}"]
  user_data       = "${file("userdata.sh")}"
  key_name        = "${var.key_name}"
}

resource "aws_security_group" "default" {
  name        = "minikube_sg"
  description = "Used in the terraform"

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
  
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 8090
    to_port     = 8090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 32751
    to_port     = 32751
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }  

  ingress {
    from_port   = 32752
    to_port     = 32752
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
