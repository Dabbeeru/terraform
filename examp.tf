provider "aws" {
 # access_key = "AKIAX372F4JUOQ23XPIZ"
  # secret_key = "9SGfy2z3+pFb9M/18Q8JuEXZ6ZkEpXoXY4Gb0agQ"
  profile    = "default"
  region     = "us-east-2"
  
}
resource "aws_instance" "example1" {
  ami           = "ami-0bd979c5fe02aae83"
  instance_type = "t2.micro"
  key_name = "windows"
}
resource "aws_eip" "ip" {
    vpc = true
    instance = aws_instance.example1.id
}

#$ export DATADOG_API_KEY="AKIAX372F4JUOQ23XPIZ"
#$ export DATADOG_APP_KEY="9SGfy2z3+pFb9M/18Q8JuEXZ6ZkEpXoXY4Gb0agQ"
