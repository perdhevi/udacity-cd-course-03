#!/bin/bash
kubectl apply -f backend-user-qa.yml
kubectl apply -f backend-user-qa-service.yml
kubectl apply -f backend-user.yml
kubectl apply -f backend-user-service.yml

kubectl apply -f backend-feed-qa.yml
kubectl apply -f backend-feed-qa-service.yml
kubectl apply -f backend-feed.yml
kubectl apply -f backend-feed-service.yml

kubectl apply -f frontend.yml
kubectl apply -f frontend-service.yml

kubectl apply -f reverseproxy.yml
kubectl apply -f reverseproxy-service.yml
