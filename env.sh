#!/bin/bash

# Configuración GCP
export PROJECT_ID=$(gcloud config get-value project)
export REGION="europe-west1"
export ZONE="europe-west1-b"

# Configuración de Red
export NETWORK_NAME="vpc-gke-segura"
export SUBNET_NAME="subred-gke"

# Rangos de IP internos (RFC 1918)
export SUBNET_RANGE="10.10.0.0/20"
export PODS_RANGE="10.20.0.0/16"
export SERVICES_RANGE="10.30.0.0/20"
export MASTER_RANGE="172.16.0.0/28"

# IPs públicas autorizadas
# Tu IP actual: puedes comprobarla con curl -s ifconfig.me
export MY_IP="$(curl -s ifconfig.me)/32"
# export PEER_IP="IP_COMPANERA/32" -----------

# Clúster
export CLUSTER_NAME="cluster-privado-seguro"



# PARA CARGAR LAS VARIABLES DE ENTORNO ANTES DEL DESPLIEGUE:
# source env.sh
