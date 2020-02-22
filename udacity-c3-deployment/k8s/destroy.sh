kubectl delete -f backend-user-qa.yml
kubectl delete -f backend-user-qa-service.yml
kubectl delete -f backend-user.yml
kubectl delete -f backend-user-service.yml

kubectl delete -f backend-feed-qa.yml
kubectl delete -f backend-feed-qa-service.yml
kubectl delete -f backend-feed.yml
kubectl delete -f backend-feed-service.yml

kubectl delete -f frontend.yml
kubectl delete -f frontend-service.yml

kubectl delete -f reverseproxy.yml
kubectl delete -f reverseproxy-service.yml
