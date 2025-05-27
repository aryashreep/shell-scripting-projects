#!/bin/bash
# Version: v1
#
# This script will report the GCP resource usage
###################################

# Google cloud storage
# Google Compute Engine
# Google cloud function
# GCP I am user

set -x
# initialize
# gcloud init

#  List Available Projects
#gcloud projects list

# Set Active Project
#gcloud config set project 701207556377

# Verify Active Project
#gcloud config get-value project

# List all storage
echo "List all GCP buckets"
gsutil ls

# List all compute instance
echo "List all GCP compute instances"
#gcloud compute instances list
#gcloud --project compute instances list #--project=701207556377
gcloud compute instances list --format="csv(NAME,ZONE,MACHINE_TYPE,PREEMPTIBLE,INTERNAL_IP,EXTERNAL_IP,STATUS)" > gcp_instances.csv

# List all cloud function
echo "List all GCP cloud functions"
gcloud functions list

# List all IAM  users
echo "List all GCP IAM users"
gcloud iam service-accounts list
