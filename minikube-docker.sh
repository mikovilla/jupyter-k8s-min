PROFILE=jupyter-k8s-min

minikube delete -p "$PROFILE" || true

minikube start -p "$PROFILE" \
  --driver=docker \
  --mount --mount-string="$HOME/projects/$PROFILE/drive:/drive"

eval "$(minikube -p "$PROFILE" docker-env)"
