# Kubernetes Minikube Deployment

This repository contains Kubernetes manifests to deploy a sample application locally using Minikube.

## 📝 Prerequisites
- [kubectl](https://kubernetes.io/docs/tasks/tools/) installed and configured  
- [Minikube](https://minikube.sigs.k8s.io/docs/start/) installed  
- Docker installed (for Minikube driver)  

## Check versions:
```bash
kubectl version --client
minikube version
```
## 🚀 Steps to Run Locally

## 1. Start Minikube
Start a Minikube cluster with enough resources:
```bash
minikube start --driver=docker --cpus=2 --memory=3072
```
## 2. Clone This Repository
```bash
git clone https://github.com/AAKASHDEEP786/kubernetes-minikube-deployment.git
cd kubernetes-minikube-deployment/kubernetes
```
## 3. Create Namespace
```bash
kubectl apply -f namespace.yaml
```

(Optional) Set the default namespace:
```bash
kubectl config set-context --current --namespace=internship-day5
```
## 4. Apply Kubernetes Manifests
```bash
kubectl apply -f configmap.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
## 5. Verify Deployment
```bash
kubectl get pods
kubectl get svc
```
## 6. Access the Application
Option A (minikube helper):
```bash
minikube service hello-svc --url
# open the returned URL in your browser; it will show the plain text response
```
Option B (port-forward):
```bash
kubectl port-forward svc/hello-svc 8080:80
# then open http://localhost:8080 in your browser
```
## 7. Debugging
You can run a debug pod:
```bash
kubectl apply -f debug-pod.yaml
kubectl exec -it <debug-pod-name> -- sh
```
## 8. Clean Up (when you're done)
```bash
kubectl delete -f .
minikube delete

```


