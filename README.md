# GKE Cluster (Google Cloud)

Google Kubernetes Engine (GKE) deployed in Google Cloud Platform (GCP) using infrastructure code in Terraform.

## Prerequisites

* Install tools:
  * [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
* Create account on:
  * [Google Cloud](https://console.cloud.google.com/)
* Set up GCP:
  * [Create GCP project](https://console.cloud.google.com/cloud-resource-manager)
  * [Enable Google Compute Engine](https://console.developers.google.com/apis/library/compute.googleapis.com)
  * [Enable Kubernetes Engine API](https://console.cloud.google.com/apis/library/container.googleapis.com)
  * [Create GCP service account key](https://console.cloud.google.com/apis/credentials/serviceaccountkey)
  * [Grant access as project editor for new service account](https://console.cloud.google.com/iam-admin/iam)

# Infrastructure

After proper configuring account in Google Cloud, whole infrastructure can be provisioned using commands:

```
terraform init --upgrade

terraform fmt -recursive
terraform validate

terraform plan
terraform apply -auto-approve
```

In order to check resources from command line, use commands:

```
gcloud auth login
gcloud auth list
gcloud projects list

export GCP_PROJECT_ID=`gcloud projects list --format="value(projectId)" --filter="name=gcp-gke"`

gcloud compute --project $GCP_PROJECT_ID zones list
gcloud compute --project $GCP_PROJECT_ID images list
gcloud compute --project $GCP_PROJECT_ID machine-types list
gcloud compute --project $GCP_PROJECT_ID instances list
gcloud compute --project $GCP_PROJECT_ID networks list
gcloud compute --project $GCP_PROJECT_ID instances list
gcloud container --project $GCP_PROJECT_ID clusters list
```

# Links

* [Provision a GKE Cluster (Google Cloud)](https://learn.hashicorp.com/tutorials/terraform/gke?in=terraform/kubernetes)
