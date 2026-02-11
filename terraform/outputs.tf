output "master_public_ip" {
  value = aws_instance.k8s_nodes[0].public_ip
}

output "master_private_ip" {
  value = aws_instance.k8s_nodes[0].private_ip
}

output "worker_private_ips" {
  value = [
    for i in aws_instance.k8s_nodes :
    i.private_ip if i.tags["Name"] != "k8s-master"
  ]
}

