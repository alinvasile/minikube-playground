#
# Credits to https://gist.github.com/osowski/adce22b01fadd6e2bc3331c066d7d612
#

K8S_VERSION=v1.6.2
MINIKUBE_VERSION=v0.18.0

echo "Installing VirtualBox........................"
sudo apt-get install virtualbox

#Installing kubectl https://kubernetes.io/docs/getting-started-guides/kubectl/
echo "Installing kubectl ${K8S_VERSION} ..........................."
wget https://storage.googleapis.com/kubernetes-release/release/${K8S_VERSION}/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/kubectl

#Installing minikube https://github.com/kubernetes/minikube/releases
echo "Installing minikube ${MINIKUBE_VERSION}.........................."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/${MINIKUBE_VERSION}/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
