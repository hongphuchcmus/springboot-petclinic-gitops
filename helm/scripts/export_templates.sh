#!/bin/bash

# List of service names
services=(
  config-server
  discovery-server
  admin-server
  vets-service
  customers-service
  visits-service
  api-gateway
)
# Prefix
prefix=hongphuchcmus
# Image Prefix
image_prefix=spring-petclinic

# Loop over each service
for service in "${services[@]}"; do
  helm template $service helm/spring-petclinic-chart -f helm/spring-petclinic-chart/values-$service.yaml > config/$service.yaml 
done
