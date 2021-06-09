minikube start --vm-driver=hyperkit
minikube addons enable metallb
minikube addons enable default-storageclass
minikube addons enable storage-provisioner
minikube addons enable metrics-server
eval $(minikube docker-env)

docker build -t nginx-image			./srcs/nginx/
docker build -t mysql-image			./srcs/mysql/
docker build -t phpmyadmin-image	./srcs/phpmyadmin/
docker build -t wordpress-image		./srcs/wordpress/
docker build -t influxdb-image		./srcs/influxdb/
docker build -t telegraf-image		./srcs/telegraf/
docker build -t grafana-image		./srcs/grafana/
docker build -t ftps-image			./srcs/ftps/

kubectl apply -f		./srcs/metallb.yaml
kubectl apply -f		./srcs/nginx/nginx.yaml
kubectl apply -f		./srcs/mysql/mysql.yaml
kubectl apply -f		./srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f		./srcs/wordpress/wordpress.yaml
kubectl apply -f		./srcs/influxdb/influxdb.yaml
kubectl apply -f		./srcs/telegraf/telegraf.yaml
kubectl apply -f		./srcs/grafana/grafana.yaml
kubectl apply -f		./srcs/ftps/ftps.yaml

sleep 15 && kubectl delete pod -l app=wordpress

minikube dashboard