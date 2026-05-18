terraform{
    required_providers {
        aws = {
            source = "hashcrop/aws"
            version = "6.44.0"

        }
    }
}

#provide authentication here
provider "aws"{
    region = "us-east-1"
}
