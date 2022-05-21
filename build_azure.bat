call kubectl delete deploy backend-1

call npm run build

call docker build -t backend-1 .

call docker tag backend-1 varasrinivas.azurecr.io/backend-1

call docker image push varasrinivas.azurecr.io/backend-1

call kubectl apply -f ./k8/deployment_azure.yaml