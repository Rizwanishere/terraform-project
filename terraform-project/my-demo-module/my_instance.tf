resource "aws_instance" "my-demo-instance" {
	ami=var.ami
	instance_type=var.instance_type
	tags= {
		Name= "${var.env}-${var.instance_name}"
	}
}
