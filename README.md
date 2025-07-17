# terraform-may-2025

### Create virginia.tfvars in Class4-Part2 folder

```hcl
region = "us-east-1"
key_name = "hello"
port = [443, 3306]
ec2_web = {
    ami_id = "ami-05ffe3c48a9991133"
    type = "t3.micro"
    subnet = "subnet-03188eab6c7b69574"
}

vpc = {
    cidr = "10.0.0.0/16"
    name = "my-vpc"
}

subnet = [
    { cidr = "10.0.1.0/24", az = "us-east-1a", name = "subnet1"},
    { cidr = "10.0.2.0/24", az = "us-east-1b", name = "subnet2"},
    { cidr = "10.0.3.0/24", az = "us-east-1c", name = "subnet3"}
]
```
