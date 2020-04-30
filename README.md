## Azure Terraform template for Kubespray

###
This template will deploy a full infrastructure ready to be Kube-formed with Kubespray. Features:

- Uses managed disks for OS
- Access to master nodes is achieved via NAT rules on the loadbalancer
- [upcoming] Configurable data disks for agent nodes


## Initialization
As in the [Azure Terraform documentation](https://docs.microsoft.com/en-us/azure/developer/terraform/install-configure), you need to declare login informations :
- ARM_SUBSCRIPTION_ID
- ARM_CLIENT_ID
- ARM_CLIENT_SECRET
- ARM_TENANT_ID
- ARM_ENVIRONMENT

First get the wanted subscriptionId, and export it to `ARM_SUBSCRIPTION_ID`.
```
az account list --query "[].{name:name, subscriptionId:id, tenantId:tenantId}"
```
Then, 
```
az account set --subscription="${ARM_SUBSCRIPTION_ID}"
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/${ARM_SUBSCRIPTION_ID}"
```
Export the `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, `ARM_TENANT_ID` with respectively the returned values `appId`, `password`, `tenant`. In our case, `ARM_ENVIRONMENT` is facultative and can be set to `public`.

Go to the repository directory, and init Terraform.
```
terraform init
```

## Commands
Init parameters. 
```
export TF_VAR_admin_public_key=""
export TF_VAR_resource_group_name="test2"

# check if ok
terraform plan -var="agent_count=2"

terraform apply -var="agent_count=2"
```

### Cluster installation (from master)
Could be better with Bastion (next step)
```
#scp the wanted private key in ~/.ssh/id_rsa
#scp the inventory.ini in ~
# on the master node :
chmod 700 ~/.ssh/id_rsa
sudo apt update
sudo apt install python3-pip
mkdir xp
cd xp
git clone https://github.com/kubernetes-sigs/kubespray.git
cd kubespray
git checkout release-2.11 # parameter?
cp -R inventory/sample inventory/mycluster
cp ~/inventory.ini inventory/mycluster
# update inventory/mycluster needed parameters
sudo pip3 install -r requirements.txt
# check if ok
ansible -i inventory/liveMigrations/inventory.ini -m ping
ansible-playbook -b -i inventory/liveMigrations/inventory.ini cluster.yml
# if ok 
kubectl cluster-info
```
Now you can label nodes and enjoy. Node 1 should be the "manager".

### Scaling up/down
ansible-playbook -b -i inventory/fabric/inventory.ini scale.yml

ansible-playbook -b -i inventory/fabric/inventory.ini remove-node.yml --extra-vars "node=kubespray-agent-002-vm"