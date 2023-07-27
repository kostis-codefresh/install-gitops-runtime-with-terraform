terraform {

  backend "kubernetes" {
    secret_suffix = "gitops-runtime-installation"
    config_path   = "~/.kube/config"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "my_gitops_runtime" {
  name = "my-codefresh-runtime"

  repository       = "https://chartmuseum.codefresh.io/gitops-runtime"
  chart            = "gitops-runtime"
  namespace        = "my-codefresh-runtime"
  version          = "0.2.14"
  create_namespace = true
  set {
    name  = "global.codefresh.accountId"
    value = var.cf_account_id
  }
  set {
    name  = "global.codefresh.userToken.token"
    value = var.cf_token
  }
  set {
    name  = "global.runtime.name"
    value = "from-terraform"
  }
}