#!/bin/bash

# Variables
GCP_PROJECT_ID='learning-gcp-430208'
GCP_INSTANCE_NAME='spring-boo-app-deployment'
GCP_ZONE='us-central1-a'
GCS_BUCKET='ecomerce-bucket'  # Replace with your bucket name

# Authenticate with GCP
gcloud auth activate-service-account --key-file=C:\\Users\\SusheelKumar\\Gcp-service-key\\learning-gcp-430208-06037849baba.json
gcloud config set project $GCP_PROJECT_ID

# Upload the build artifact to GCS
gsutil cp target/Ecomerce-Project-0.0.1-SNAPSHOT.jar gs://$GCS_BUCKET/

# SSH into the GCP instance and deploy
gcloud compute ssh $GCP_INSTANCE_NAME --zone=$GCP_ZONE --command="sudo systemctl restart your-service-name"
