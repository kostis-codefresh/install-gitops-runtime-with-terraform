# Codefresh Runtime install
How to install a Codefresh GitOps runtime using Terraform instead of Helm

## Prepare Terraform and parameters

```shell
export TF_VAR_cf_account_id=<your account id>
export TF_VAR_cf_token=<your cf token>
```

Create a Codefresh token at https://g.codefresh.io/user/settings
Get accound id from https://g.codefresh.io/2.0/account-settings/runtimes/ (Click the "Add runtime" button)


## Run terraform

Get a kubeconfig context to the cluster that will hold the runtime.

```
terraform init
terraform apply
```

After terraform has finished the new runtime should be visible inside Codefresh



