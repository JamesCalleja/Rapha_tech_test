resource "aws_route53_zone" "rapha_r53_zone" {
  name = "jamescalleja.com"
}


resource "aws_route53_record" "rapha_app_dns" {
  zone_id = aws_route53_zone.rapha_r53_zone.id
  name    = "rapha.jamescalleja.com"
  type    = "A"
  alias {
    name                   = aws_lb.rapha_nlb.dns_name
    zone_id                = aws_lb.rapha_nlb.zone_id
    evaluate_target_health = true
  }
}
