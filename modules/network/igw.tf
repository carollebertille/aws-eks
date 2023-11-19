resource "aws_internet_gateway" "igw" {
  depends_on = [
    aws_vpc.vpcgeolocation
  ]
  vpc_id = aws_vpc.vpcgeolocation.id

  tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-igw", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}