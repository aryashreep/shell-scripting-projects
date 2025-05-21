#!/bin/bash
# Version: v1
#
# This script will report the GCP resource tracker
###################################

# Google cloud storage
# Google Compute Engine
# Google cloud function
# GCP I am user

set -x

# List all storage
echo "List all GCP buckets"
gsutil ls

# List all compute instance
echo "List all GCP compute instances"
gcloud compute instances list

# List all cloud function
echo "List all GCP cloud functions"
gcloud functions list

# List all IAM  users
echo "List all GCP IAM users"
gcloud iam service-accounts list
