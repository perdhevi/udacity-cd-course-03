# udacity-cd-course-03
Udacity Cloud Developer course 03

# Deployment
All deployment is done on the kubernetes cluster
for AWS deploy the kubeone by following this article
https://github.com/kubermatic/kubeone/blob/3746055da2dfa0a747691927dffa9a66db54fd18/docs/quickstart-aws.md

and then once deployed add the secrets information, not included but in general it should have the format as follow

# envSecret.yml
```
apiVersion: v1
kind: Secret
metadata:
  name: env-secret
type: Opaque
data:
  POSTGRESS_USERNAME: Postgress user
  POSTGRESS_PASSWORD: Postgress Password
```
# aws-secret.yml
```
apiVersion: v1
kind: Secret
metadata:
  name: aws-secret
type: Opaque
data:
  credentials: <access token from aws>
 ```

 once this two secrets are added we need to deploy the system
 in the /udacity-c3-deployment/k8s
 - run the ```kubectl apply -f envConfig.yml```
 - to deploy run ```bash ./deploy.sh ```

 once deployed we need to port-forward the services to allow local access
 
 ```
 kubectl port-forward service/frontend 8100:8100
 ```

 # Take down
 in the /udacity-c3-deployment/k8s run 
 ```bash ./destroy.sh ```

# References:
## Travis-CI
![image of travis-ci](../screenshots/udacity-03-1.Travis.png?raw=true)

## Pods
![image of get Pod](../screenshots/udacity-03-3. Get Pods.png?raw=true)

## Apps
![image of apps](../screenshots/udacity-03-4.apps screenshot.png?raw=true)