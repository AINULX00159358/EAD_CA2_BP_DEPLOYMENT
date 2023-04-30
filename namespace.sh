# az account set --subscription 7263e463-da66-4888-a897-f34f5acea14b
# az aks get-credentials --resource-group k8s-resource-group --name ainhabAKS
# kubectl apply -f namespaces/namespaces.yaml
kubectl apply -n blue -f ./ServiceAccount
kubectl apply -n green -f ./ServiceAccount
kubectl apply -n mongo -f ./ServiceAccount
kubectl apply -n ingress-basic -f ./ServiceAccount
kubectl get namespaces
kubectl get secrets --all-namespaces=true
