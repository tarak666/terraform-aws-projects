resource  "aws_key_pair ""tarakterra" {
  key_name = "tarakterra"
  public_key = file(var.PUB_KEY_PATH)
}