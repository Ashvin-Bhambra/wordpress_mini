resource "aws_vpc" "main"{
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "WordPress_1"
    }
}

resource "aws_internet_gateway" "igw"{
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "Internet Gateway"
    }
}