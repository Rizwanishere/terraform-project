resource "aws_instance" "my_project_instance" {
	ami = "ami-03f4878755434977f"
	instance_type = "t2.micro"
        tags = {
                Name = "terraform-ec2"
        }
}

module "my_dev_app" {
	source = "./my-demo-module"
	env = "dev"
	instance_type= "t2.micro"
	ami = "ami-03f4878755434977f"
	instance_name = "terraform-ec2"
}

module "my_prd_app" {
        source = "./my-demo-module"
        env = "prd"
        instance_type= "t2.micro"
        ami = "ami-03f4878755434977f"
        instance_name = "terraform-ec2"
}
