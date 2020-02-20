#!/bin/bash
ssh-add /Users/radityaperdhevi/OneDrive/keys/aws/demoKey.pem
#set Environment Variable
export AWS_ACCESS_KEY_ID=`cat ~/.aws/credentials | grep aws_access_key_id | awk '{print  $3}' `
export AWS_SECRET_ACCESS_KEY=`cat ~/.aws/credentials | grep aws_secret_access_key | awk '{print  $3}' `

terraform plan
terraform apply

kubeone install config.yaml --tfjson .
