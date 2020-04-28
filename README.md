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
```
