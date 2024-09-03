#!/bin/bash

# Create namespace 

kubectl apply -f namespace.yaml

# Apply the resource quota

kubectl apply -f resource-quota-namespace.yaml -n dev

# Apply the LimitRange for pods

kubectl apply -f Limit-Range-pods.yaml -n dev

# elasticsearch-ss Deployment 

kubectl apply -f elasticsearch-ss.yaml -n dev 

# logstash-deployment Deployment 

kubectl apply -f logstash-deployment.yaml -n dev

# filebeat-deployment Deployment

kubectl apply -f filebeat-deployment.yaml -n dev

# metricbeat Deployment 

kubectl apply -f metricbeat.yaml -n dev

# kibana-deployment Deployment

kubectl apply -f kibana-deployment.yaml -n dev

# Apply the curator cronjob

kubectl apply -f curator-cronjob.yaml -n dev
