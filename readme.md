# jupyter-k8s-min
Lightweight Jupyter Notebook deployment on Kubernetes (via Helm chart) featuring a ConfigMap for Python dependencies and a persistent volume (using hostPath on Minikube) to ensure notebooks and data are retained across restarts.

## Prerequisites

Before deploying this chart, make sure you have the following installed and configured:

- [Minikube](https://minikube.sigs.k8s.io/docs/) 
- [kubectl](https://kubernetes.io/docs/tasks/tools/) 
- [Helm](https://helm.sh/docs/intro/install/) 
- Docker (for Minikube’s Docker driver)
- A working internet connection (for pulling Jupyter Notebook images and installing Python dependencies)
- [k9s](https://k9scli.io/) (optional)

## Setup
1. Make the **minikube-docker.sh** executable by running `chmod +x minikube-docker.sh`. This contains starting minikube with a mounted directory, and evaluating Minikube’s Docker environment setup in the current shell
2. Install the helm chart `helm install <release-name> ./helm`
3. Portforward using k9s or `kubectl port-forward svc/<service-name> 8888:8888` or `minikube service <service-name> -p <profile-name>`
4. Open your app in the browser