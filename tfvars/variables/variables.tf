variable "ami-id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of RHEL9 Image"
}

variable "instance_type" {
    # type = string
    # default = "t3.micro"
    # use export TF_VAR_instance_type = "t3.small" to implemen environment variable
    # unset TF_VAR_instance_type ="" to unset the value
}

variable "from_port" {
    type = number
    default = 22
}

variable "to_port" {
    default = 22
}

variable "cidr-blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "ec2-tags" {
    type = map(string)
    default = {
        Project = "expense"
        Component = "backend" 
        Environment = "dev"
        Name = "expense-backend-dev"
         }
}

variable "sg-tags" {
    type = map(string)
    default = {
        Name = "expense-backend-dev"
         }
}

