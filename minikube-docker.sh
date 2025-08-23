PROFILE=jupyter-k8s-min
MEMORY=16384
CPUS=4

minikube delete -p "$PROFILE" || true

minikube start -p "$PROFILE" \
  --memory=$MEMORY \
  --cpus=$CPUS \
  --driver=docker \
  --mount --mount-string="$HOME/projects/$PROFILE/drive:/drive"

eval "$(minikube -p "$PROFILE" docker-env)"

