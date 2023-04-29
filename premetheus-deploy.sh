helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add stable https://charts.helm.sh/stable
helm install prometheus prometheus-community/kube-prometheus-stack --set grafana.enabled=false --namespace monitoring --create-namespaces
