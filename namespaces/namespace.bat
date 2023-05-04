kubectl apply -f namespaces/namespaces.yaml
kubectl apply -n blue -f ./ServiceAccount
kubectl apply -n green -f ./ServiceAccount
kubectl apply -n mongo -f ./ServiceAccount
kubectl apply -n ingress-nginx -f ./ServiceAccount
kubectl get namespaces
kubectl get secrets --all-namespaces=true
