output "blue  nodes" {
  value = "${aws_instance.Elasticsearch.public_ip}"
}


output " greem  nodes" {
  value = "${aws_instance.kibana.public_ip}"
}

#output "ft  private nodes" {
#  value = "${aws_instance.Elasticsearch.private_ip}"
#
#}
