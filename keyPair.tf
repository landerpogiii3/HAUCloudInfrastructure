module "key_pair" {
  source = "github.com/landerpogiii3/awsKeyPair"
  key-pair = var.key_name
}