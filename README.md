## Terraform template for Kubespray

###
This template will deploy a full infrastructure ready to be Kube-formed with Kubespray. Features:

- Uses managed disks for OS
- Access to master nodes is achieved via NAT rules on the loadbalancer
- [upcoming] Configurable data disks for agent nodes