module "web_front1" {
  source = "../../modules/ec2/v1/webbox"


  vpc_elb_ip = ""
  keyname = ""
  vpc_id = ""
}