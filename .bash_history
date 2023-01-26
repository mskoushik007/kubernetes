clear
apt update && apt upgrade -y && apt dist-upgrade -y
apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg2 net-tools
hostnamectl set-hostname $(curl -s http://169.254.169.254/latest/meta-data/local-hostname)
apt install -y docker.io
cat << EOF > /etc/docker/daemon.json
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

systemctl stop docker
systemctl start docker
systemctl enable docker
cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

sysctl --system
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt update
apt install kubelet="1.22.17-00" 
apt install kubeadm="1.22.17-00"
apt install kubectl="1.22.17-00"
cat << EOF > /etc/kubernetes/aws.yaml
---
apiVersion: kubeadm.k8s.io/v1beta3
kind: ClusterConfiguration
kubernetesVersion: v1.22.17
networking:
  serviceSubnet: "10.100.0.0/16"
  podSubnet: "10.244.0.0/16"
apiServer:
  extraArgs:
    cloud-provider: "aws"
controllerManager:
  extraArgs:
    cloud-provider: "aws"
EOF

kubeadm init --config /etc/kubernetes/aws.yaml
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/manifests/calico-typha.yaml
kubectl get nodes
kubectl get pods -A
kubectl get nodes
hostname -f
kubectl get nodes
clear
kubectl get nodes
kubectl get pods -A
kubectl get nodes
CLEAR
clear
kubectl get nodes
kubectl get pods -A
kubectl get nodes
clear
vi myfirstpod.yaml
kubectl create -f myfirstpod.yaml 
kubectl get nodes
clear
kubectl get pods
clear
kubectl get nodes
clear
ls
vi myfirstpod.yaml 
vi clusterip.yaml
kubectl apply -f clusterip.yaml 
kubectl get svc
kubectl get endpoint
kubectl get endpoints
kubectl api-resources | grep service
clear
kubectl get svc
curl 10.100.10.61:8080
kubectl get po
kubectl get pods
kubectl exec -t tomcat-jenkins --sh
clear
kubectl get pods
vi myfirstpod.yaml 
ls
kubectl get svc
curl 10.100.10.61:8080
curl -v  10.100.10.61:8080
curl -v  10.100.10.61:80
cllear
clear
kubectl get service
curl -v 10.100.10.61:8080 
vi clusterip.yaml 
kubectl get service

kubectl delete service  tom-ng-clusterip 
kubectl apply -f clusterip.yaml 
kubectl get service
kubectl get pods
kubectl delete myfirstpod.yaml 
kubectl delete pod tomcat-jenkins
kubectl get pods
clear
kubectl get service
curl -v 10.100.14.241:8080
curl -v 10.100.14.241:80
vi myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods'
kubectl get pods
kubectl get svc
kubectl delete  svc tom-ng-clusterip
kubectl get svc
kubectl apply -f clusterip.yaml 
kubectl get svc
curl -v 10.100.122.190:8080
curl -v 10.100.122.190:80
kubectl get endpoints
kubectl get pods
kubectl get pods --show-labels
vi myfirstpod.yaml 
kubectl get pods -0wide
kubectl get pods -owide
clear
kubectl get pods 
kubectl get pods -owide
kubectl get pods endpoints
kubectl get endpoints
kubectl get svc
clear
cp clusterip.yaml nodeport.yaml
vi nodeport.yaml 
kubectl apply -f nodeport.yaml 
kubectl get service
kubectl get endpoint
kubectl get endpoints
kubectl get pods -owide
cp nodeport.yaml  loadbalancer.yaml
vi loadbalancer.yaml 
kubectl apply -f loadbalancer.yaml 
kubectl get svc
kubectl get endpoints
kubectl get svc
cp loadbalancer.yaml externalip.yaml
vi externalip.yaml 
kubectl apply -f externalip.yaml 
kubectl get svc
vi ex
vi externalip.yaml 
kubectl apply -f externalip.yaml 
kubectl get svc
vi myfirstpod.yaml 
vi clusterip.yaml 
vi nodeport.yaml 
vi loadbalancer.yaml 
vi externalip.yaml 
clear\
clear
kubectl get svc
kubectl delete service --all
kubectl get svc
kubectl get pods
kubectl delete pods tomcat-jenkins 
kubectl get pods
clear
docker images
docker ps
clear
ls
vi replicaset.yaml
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl delete pods tomcat-jenkins
kubectl get pods

kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl apply -f nodeport.yaml 
kubectl get svc
kubectl get pods -owide
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
vi replicaset.yaml 
kubectl get pods
kubectl delete pods --all
kubectl get pods
kubectl delete pods --all
kubectl get pods
clear
kubectl get pods
vi replicaset.yaml 
kubectl delete pods --all
kubectl get pods
vi replicaset.yaml 
kubectl get pods
kubectl delete pods --all
kubectl get pods
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get pods
kubectl delete pods --all
kubectl get pods
ls
kubectl delete myfirstpod.yaml 
kubectl delete -f myfirstpod.yaml 
kubectl delete pod myfirstpod.yaml 
kubectl delete pods myfirstpod.yaml 
kubectl delete -f pods myfirstpod.yaml 
vi myfirstpod.yaml 
kubectl delete pods tomcat-nginix
kubectl delete pods tomcat-ngnix
vi myfirstpod.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl get pods
kubectl apply -f replicaset.yaml 
kubectl get pods
clear
vi replicaset.yaml 
kubectl apply -f replicaset.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl get pods
kubectl get pods tomcatreplica-7wh59 -oyaml
ls
clear
cp replicaset.yaml deployment.yaml
vi deployment.yaml 
kubectl get pods
vi deployment.yaml 
vi replicaset.yaml 
vi 
kubectl get pods

kubectl get pods
vi replicaset.yaml 

kubectl get pods
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl apply -f myfirstpod.yaml 
kubectl get pods
vi replicaset.yaml 
clear

kubectl apply -f myfirstpod.yaml 
kubectl get pods
vi replicaset.yaml 
kubectl apply -f deployment.yaml 
vi replicaset.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectle get pods
kubectl get pods
vi deployment.yaml 
kubectl get pods

kubectl get pods
kubectl apply -f deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods
kubectl get pods -owide
kubectl get pods -oyaml
clear
kubectl get pods -owide
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods
kubectl delete pods --all
kubectl get pods
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods
kubectl get pods -oyaml
clear
vi deployment.yaml 
kubectl delete deployment --all
kubectl get pods
vi deployment.yaml 
kubectl apply -g deployment.yaml 
kubectl apply -fdeployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl apply -fdeployment.yaml 
kubectl get pods
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods
vi deployment.yaml 
vi replicaset.yaml 
clear
kubectl get pods
kubectl delete deployment --all
kubectl delete replicaset --all
kubectl delete services --all
kubectl get pods
clear
ls
kubectl get namespace
vi deployment.yaml 
kubectl get pods
kubectl apply -f deployment.yaml 
kubectl get pods
kubectl get service
kubectl apply -f
kubectl get service
kubectl get pods
kubectl describe pods tomcatdeployment-664f8fdb5b-5kfrm
kubectl get pods
kubectl get pods -n
kubectl get pods -n default
clear
kubectl get service
kubectl get pods
kubectl get namespace
kubectl get pods -n default
kubectl delete service --all
kubectl get pods
kubectl delete pods --all
kubectl get pods
kubectl get service
kubectl get service nodeport
kubectl delete service nodeport
kubectl get pods
kubectl delete pods --all
kubectl get pods
kubectl delete deployment --all
kubectl get pods
clear
kubectl apply -f nodeport.yaml 
kubectl apply -f deployment.yaml --namespace=dev-namespace
clear
vi namespace.yaml
vi devnamespace.yaml
kubectl apply -f devnamespace.yaml 
kubectl get namespace
kubectl get pods
kubectl apply -f deployment.yaml --namespace=dev-workspace
kubectl apply -f deployment.yaml --namespace=dev-namespace
kubectl get pods -n dev-namespace
kubectl delete deployment 
kubectl delete deployment deployment.yaml 
kubectl delete deployment --all -n dev-namespace
kubectl get pods
vi myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl get pods -n dev-namespace 
kubectl delete pods --all -n dev-namespace
kubectl get pods -n dev-namespace 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -n dev-namespace 
vi resourcequota.yaml
kubectl describe namespace dev-namespace 
vi deployment.yaml 
kubectl get pods -n dev-namespace 
kubectl apply -f resourcequota.yaml 
ls
vi resourcequota.yaml 
kubectl apply -f resourcequota.yaml 
kubectl describe namespace dev-namespace 
vi limitirange.yaml
kubectl apply -f limitirange.yaml 
kubectl describe namespace dev-namespace 
vi podlimit.yaml
kubectl apply -f podlimit.yaml 
kubectl get resourcequota -n dev-namespace
kubectl get pods -n dev-namespace
vi deployment.yaml 
kubectl delete deployment -n dev-namespace
kubectl delete deployment --all -n dev-namespace
kubectl get pods -n dev-namespace
kubectl apply -f deployment.yaml 
kubectl get pods -n dev-namespace
kubectl delete deployment --all -n dev-namespace
vi podlimit.yaml 
vi deployment.yaml 
kubectl get pods -n dev-namespace
kubectl apply -f deployment.yaml 
kubectl get pods -n dev-namespace
vi deployment.yaml 
kubectl describe namespace dev-namespace
kubectl describe pods -n dev-namespace
kubectl get pods -n dev-namespace
kubectl describe replicaset -n dev-namespace
clear
kubectl delete deployment --all -n dev-namespace
kubectl delete podlimit --all -n dev-namespace
ls
kubectl delete resourcequota  --all -n dev-namespace
kubectl delete nodeport  --all -n dev-namespace
kubectl delete replicaset  --all -n dev-namespace
kubectl get pods 
kubectl get pods -n dev-namespace
clear
kubectl delete clusterip  --all -n dev-namespace
kubectl get service
kubectl delete clusterip  --all -
kubectl delete clusterip  --all 
kubectl delete service --all 
kubectl get service
kubectl delete service --all 
kubectl get service 
clear
kubectl get nodes
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule
ls
kubectl get pods
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -n dev-namespace
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
kubectl describe node  ip-10-0-0-19.ap-south-1.compute.internal
kubectl describe pods
kubectl taint node 
kubectl describe pod tomcatdeployment-64c57cf6b8-s7mx6 -n dev-namespace
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule --
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule -
kubectl taint -h
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule--
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule-
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule-
kubectl get nodea
kubectl get nodes
kubectl label node ip-10-0-0-19.ap-south-1.compute.internal size=large
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
clear
kubectl delete deployment.yaml --all
kubectl delete -f deployment.yaml --all
kubectl delete -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl label node ip-10-0-0-197.ap-south-1.compute.internal size=small
kubectl delete -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl apply -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f deployment.yaml 
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
clear
history
ls
vi deployment.yaml 
clear
kubectl get pods
kubectl get pods -n dev-namespace
kubectl delete deployment.yaml 
kubectl delete deployment.yaml -n dev-namespace
kubectl delete deployment -n dev-namespace
kubectl delete -f deployment.yaml 
kubectl get pods -n dev-namespace
kubectl get pods 
kubectl get service
clear
kubectl get nodes
kubectl taint node ip-10-0-0-197.ap-south-1.compute.internal colour=blue:NoSchedule
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl taint node ip-10-0-0-197.ap-south-1.compute.internal colour=blue:NoSchedule-
kubectl taint node ip-10-0-0-197.ap-south-1.compute.internal colour=blue:NoSchedule
kubectl describe node ip-10-0-0-19.ap-south-1.compute.internal 
clear
kubectl get pods -owide -n dev-namespace
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl get nodes
vi deployment.yaml 
kubectl describe node ip-10-0-0-197.ap-south-1.compute.internal colour=blue:

kubectl taint node ip-10-0-0-197.ap-south-1.compute.internal colour=blue:NoSchedule
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
kubectl taint node ip-10-0-0-197.ap-south-1.compute.internal colour=blue:NoSchedule-
kubectl delete -f deployment.yaml 
kubectl get pods
kubectl get pods -n dev-namespace
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
kubectl taint node ip-10-0-0-19.ap-south-1.compute.internal colour=red:NoSchedule-
kubectl delete -f deployment.yaml 
clear
kubectl get nodes
kubectl label node ip-10-0-0-19.ap-south-1.compute.internal size=small
vi deployment.yaml 
kubectl delete -f affinity
kubectl delete -f affinity --all
kubectl delete affinity --all
kubectl delete nodeaffinity --all
kubectl delete -f label 
kubectl delete -f label  node ip-10-0-0-19.ap-south-1.compute.internal 
kubectl delete -f label  node ip-10-0-0-19.ap-south-1.compute.internal size=small
kubectl 
clear
kubectl delete -f label  node ip-10-0-0-19.ap-south-1.compute.internal size=large
kubectl label node ip-10-0-0-19.ap-south-1.compute.internal size=large
kubectl label node ip-10-0-0-19.ap-south-1.compute.internal name=koushik
vi deployment.yaml 
cat deployment.yaml 
vi deployment.yaml 
kubectl delete -f deployment.yaml 
clear
kubectl delete -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
cat deployment.yaml 
clear
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
vi dep
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
kubectl describe node ip-10-0-0-19.ap-south-1.compute.internal
kubectl get pods -owide -n dev-namespace
kubectl get nodes
kubectl describe node ip-10-0-0-197.ap-south-1.compute.internal
vi deployment.yaml 
cat deployment.yaml 
vi deployment.yaml 
vi
kubectl describe node ip-10-0-0-197.ap-south-1.compute.internal
kubectl delete -f deployment.yaml 
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
vi deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
vi deployment.yaml 
cat deployment.yaml 
vi deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl apply -f deployment.yaml 
kubectl get pods -owide -n dev-namespace
kubectl apply -f deployment.yaml 
kubectl delete -f deployment.yaml 
kubectl get pods
kubectl get pods -n dev-namespace
kubectl get svc
clear
cp myfirstpod.yaml daemonset.yml
vi daemonset.yml 
mv deployment.yaml daemonset.yml 
vi daemonset.yml 
kubectl get nodes
kubectl get pods -n dev-namespace
kubectl apply -f daemonset.yml 
kubectl get pods -owide -n dev-namespace
vi daemonset.yml 
kubectl get pods -owide -n dev-namespace
clear
ls
vi daemonset.yml 
vi deployment.yaml
vi podaffinity.yaml
ls
vi daemonset.yml 
kubectl get pods -n dev-namespace
kubectl delete -f daemonset 
kubectl delete -f daemonset -n namespace
kubectl delete -f daemonset --all
kubectl delete -f tomcatdaemonset-qmcp5
kubectl delete -f daemonset -n dev-namespace
kubectl delete -f tomcatdaemonset-qmcp5 -n dev-namespace
clear
kubectl get pods -n dev-namespace
kubectl delete -f tomcatdaemonset-qmcp5 -n dev-namespace
kubectl delete -f daemonset.yml -n dev-namespace
vi daemonset.yml 
kubectl delete -f deployment -n dev-namespace
ls
vi daemonset.yml 
vi deployment.yaml 
vi daemonset.yml 
kubectl delete -f --all  -n dev-namespace
vi daemonset.yml 
clear
kubectl get pods -owide -n dev-namespace
kubectl delete -f tomcatdaemonset-qmcp5
kubectl delete -f tomcatdaemonset-qmcp5 -n dev-namespace
kubectl delete pods -f tomcatdaemonset-qmcp5 -n dev-namespace
kubectl delete -f tomcatdaemonset -n dev-namespace
kubectl delete -f tomcatdaemonset-rnzvv -n dev-namespace
kubectl get namespace
ls
vi myfirstpod.yaml 
vi daemonset.yml 
kubectl apply -f daemonset.yml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f tomcatdaemonset -n dev-namespace
kubectl delete -f tomcatdeployment -n dev-namespace
vi daemonset.yml 
kubectl delete -f deployment -n dev-namespace
kubectl delete -f deployyment -n dev-namespace
vi daemonset.yml 
kubectl delete -f Deployment -n dev-namespace
clear
kubectl get pods -owide -n dev-namespace
kubectl delete replicaset --all
kubectl delete -f daemonset.yml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f daemonset.yml 
kubectl delete -f tomcatdaemonset-qmcp5
kubectl get pods -yaml
kubectl get pods -oyaml
kubectl get pods -oyaml -n dev-namespace
kubectl delete -f pods
kubectl delete -f pod
kubectl delete -f pod -n dev-namespace
kubectl delete -f pods -n dev-namespace
kubectl get pods -oyaml -n dev-namespace
kubectl get pods -owide -n dev-namespace
kubectl delete -f tomcatdaemonset
kubectl delete -f tomcatdaemonset -n dev-namespace
kubectl get pods -owide -n dev-namespace
ls
vi daemonset.yaml
vi daemonset.yml
kubectl apply -f daemonset.yml 
vi clear
clear
kubectl get pods -owide -n dev-namespace
kubectl delete pod tomcatdaemonset-qmcp5 
kubectl delete pod tomcatdaemonset-qmcp5 -n dev-namespace
kubectl get pods -owide -n dev-namespace
kubectl delete pod tomcatdaemonset -n dev-namespace
kubectl delete pods tomcatdaemonset -n dev-namespace
vi daemonset.yml 
vi daemonset.yaml
kubectl delete replicaset
kubectl delete replicaset -n dev-namespace
kubectl delete -f replicaset -n dev-namespace
kubectl delete  replicaset 
vi daemonset.yml
vi deployment.yaml 
kubectl delete -f deployment

vi deployment.yaml 
clear
vi daemonset.yml
vi daemonset.y
vi daemonset.yml 
rm -rf deployment.yml
ls
vi deployment.yaml 
rm -rf daemonset.yml
ls
vi daemonset.yaml 
kubectl get pods -owide -n dev-namspace
kubectl get pods -owide -n dev-namespace
kubectl get pods -owide -n dev--namespace
kubectl delete pod tomcatdaemonset-c7dz8 -n dev--namespace
kubectl get namespace
kubectl delete pod tomcatdaemonset-c7dz8 -n dev-namespace
kubectl get pods -owide -n dev--namespace
kubectl get pods -owide -n dev-namespace
ls
vi dae
vi daemonset.yaml 
kubectl delete -f daemonset.yaml 
kubectl get pods -owide -n dev-namespace
vi daemonset.yaml 
clear
kubectl apply -f daemonset.yaml 
kubectl get pods -owide -n dev-namespace
kubectl delete -f daemonset
kubectl delete -f daemonset.yaml 

kubectl apply -f podaffinity.yaml 
kubectl get pods -owide -n dev-namespace
 
kubectl get pods -owide -n dev-namespace
vi podaffinity.yaml 
cat podaffinity.yaml 
cat daemonset.yaml 
cp podaffinity.yaml antiaffinity.yaml
vi antiaffinity.yaml 
kubectl get pods -owide -n dev-namespace
kubectl apply -f antiaffinity.yaml 
kubectl get pods -owide -n dev-namespace
kubectl apply -f antiaffinity.yaml 
kubectl delete -f antiaffinity.yaml 
vi antiaffinity.yaml 
kubectl apply -f antiaffinity.yaml 

kubectl delete -f antiaffinity.yaml 
ls
vi limitirange.yaml 
kubectl delete -f  limitirange.yaml 
kubectl aplly -f myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods 
kubectl get po
kubectl describe pod -n dev-namespace
vi limitirange.yaml 
kubectl apply -f limitirange.yaml 
kubectl describe pod -n dev-namespace
kubectl delete -f  limitirange.yaml 
kubectl delete -f myfirstpod.yaml 
vi limitirange.yaml 
kubectl apply -f limitirange.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl describe pod -n dev-namespace
kubectl delete -f  limitirange.yaml 
kubectl delete -f myfirstpod.yaml 
vi limitirange.yaml 
kubectl apply -f limitirange.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl describe pod -n dev-namespace
clear
ls
mv antiaffinity.yaml podantiaffinity.yaml
clear
kubectl get pods
kubectl get pods -n dev-namespace
kubectl delete pod myfirstpod.yaml 
kubectl delete -f myfirstpod.yaml 
kubectl get pods -n dev-namespace
clear
ls
cat myfirstpod.yaml 
vi myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
vi myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
kubectl get pods
kubectl get pods -n dev-namespace
cat myfirstpod.yaml 
kubectl get nodes --show--labels
kubectl get nodes --show-labels
ls
kubectl delete -f myfirstpod.yaml 
kubectl apply -f myfirstpod.yaml 
cat myfirstpod.yaml 
clear
ls
cp myfirstpod.yaml datavolumepod.yaml
vi myfirstpod.yaml 
vi firstpod.yaml
mv firstpod.yaml myfirstpod.yaml 
vi myfirstpod.yaml 
ls
cat datavolumepod.yaml 
cp deployment.yaml datavolumedeployment.yaml
vi datavolume
vi datavolumedeployment.yaml 
vi datavolumepod.yaml 
vi datavolumedeployment.yaml 
kubectl get nods -n dev-namespace
kubectl get pods -n dev-namespace
kubectl delete -f datavolumepod.yaml 
kubectl get pods -n dev-namespace
kubectl apply -f datavolumedeployment.yaml 
vi datavolumedeployment.yaml 
kubectl apply -f datavolumedeployment.yaml 
vi datavolumedeployment.yaml 
kubectl apply -f datavolumedeployment.yaml 
kubectl get pods -n dev-namespace
clear
kubectl get pods -n dev-namespace
cat datavolumedeployment.yaml 
vi datavolumepod.yaml 
vi datavolumedeployment.yaml 
kubectl get pods -n dev-namespace
kubectl exec -it jenkinsdeployment-58f89bcc7f-4xmmc -/bin/sh 
kubectl exec -it jenkinsdeployment-58f89bcc7f-4xmmc --/bin/sh 
kubectl exec -it jenkinsdeployment-58f89bcc7f-4xmmc -- /bin/sh 
kubectl exec -it jenkinsdeployment-58f89bcc7f-4xmmc -n dev-namespace -- /bin/sh 
ls
vi nodeselector.yaml
vi nodeaffinity.yaml
clear
kubectl delete -f datavolumedeployment.yaml 
kubectl get pods -n dev-namespace
kubectl get nodes
vi secret.yaml
kubectl apply -f secret.yaml 
kubectl delete -f secret.yaml 
kubectl get pods
kubectl get pods -n dev-namspace
ls
vi podlimit.yaml 
vi podaffinity.yaml 
vi podantiaffinity.yaml 
clear
