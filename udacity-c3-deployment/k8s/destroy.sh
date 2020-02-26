kubectl delete -f backend-user-qa-v1.yml
kubectl delete -f backend-user-qa-service.yml
kubectl delete -f backend-user-v1.yml
kubectl delete -f backend-user-service.yml

kubectl delete -f backend-feed-qa-v1.yml
kubectl delete -f backend-feed-qa-service.yml
kubectl delete -f backend-feed-v1.yml
kubectl delete -f backend-feed-service.yml

kubectl delete -f frontend-v1.yml
kubectl delete -f frontend-service.yml

kubectl delete -f reverseproxy-v1.yml
kubectl delete -f reverseproxy-service.yml
