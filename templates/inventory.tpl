[k8s-cluster:vars]

[all:vars]
ansible_user=${admin_username}

[all]
${connection_strings_master}
${connection_strings_node}
${connection_strings_etcd}
#${public_ip_address_bastion}

[bastion]
#${public_ip_address_bastion}

[kube-master]
${list_master}


[kube-node]
${list_node}


[etcd]
${list_etcd}

[calico-rr]


[k8s-cluster:children]
kube-node
kube-master
calico-rr


