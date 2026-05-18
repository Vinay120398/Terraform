variable "image_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
  
}

variable "instance_name" {
    type = string
    default = "frontend"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "Test"
        Name = "backend"
        Environment = "SIT"
        Module = "backend"
    }
}

variable "sg_name" {
    type = string
    default = "allow_ssh"
}

variable "sg_description" {
    type = string
    default = "allowing port 22"
}

variable "ssh_port" {
    default = "22"
}

variable "ssh_port1" {
    default = "0"
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "protocol_all" {
    default = "-1"
}

variable "allowed_cidr" {
    type = list(string)
    default = [ "0.0.0.0/0" ]
  
}

variable "instance_createdby" {
    default = "vinaykumar"
}

variable "environment" {
    default = "SIT"
}