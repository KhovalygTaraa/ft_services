# ft_services
It's student project. Target is deploy Kubernetes cluster on minikube. Minikube - is one of k8s realization. Best for education. In our cluster we should up Wordpress, Phpmyadmin, Grafana. Everyone work on own Nginx server. Also we have to up separate Nginx server, in which installed SSH. So we can connect to this server remotely with SSH. Also in there FTPS server. 
### Run
1. In first you should install minikube - "brew install minikube"
2. In second we need Docker. Download docker from https://www.docker.com/products/docker-desktop
3. Than you should run setup.sh script - "bash setup.sh"
4. At least, write next command - minikube dashboard. There you will find "Pods" part and ip adresses of services on localhost. 
