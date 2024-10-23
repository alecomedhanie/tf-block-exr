resource "aws_instance" "myinstance" {
  ami           = data.aws_ami.my_ami.id
  instance_type = var.my_type
  monitoring = true
  ebs_optimized = true

   # Root EBS volume encryption
  root_block_device {
    volume_type           = "gp3"  # or "gp2"
    volume_size           = 20     # in GiB, adjust as needed
    encrypted             = true   # Ensure encryption is enabled

  }
  # Enable IMDSv2 and disable IMDSv1
  metadata_options {
    http_tokens = "required"         # Enforces the use of IMDSv2
    http_put_response_hop_limit = 1  # Limits the number of network hops
    http_endpoint = "enabled"        # Ensures that the metadata service is accessible
  }

  tags = {
    Name = local.name
  }
}