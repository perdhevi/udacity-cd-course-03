#!/bin/bash
kubectl apply -f backend-user-qa-v1.yml
kubectl apply -f backend-user-qa-service.yml
kubectl apply -f backend-user-v1.yml
kubectl apply -f backend-user-service.yml

kubectl apply -f backend-feed-qa-v1.yml
kubectl apply -f backend-feed-qa-service.yml
kubectl apply -f backend-feed-v1.yml
kubectl apply -f backend-feed-service.yml

kubectl apply -f frontend-v1.yml
kubectl apply -f frontend-service.yml

kubectl apply -f reverseproxy-v1.yml
kubectl apply -f reverseproxy-service.yml
