set NAMESPACE=ingress-basic

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm uninstall ingress-nginx -n %NAMESPACE%
helm upgrade --install ingress-nginx ingress-nginx/ingress-nginx --create-namespace --namespace %NAMESPACE% --set controller.service.annotations."service.beta.kubernetes.io/azure-load-balancer-health-probe-request-path"=/health