output "ftvpc" {
    value =  "${aws_vpc.ft.id}"
}  


output "aws_ft_public_subnet" {
    value =  "${aws_subnet.ftpublic_subnet.id}"
}  

