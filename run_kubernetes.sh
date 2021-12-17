# Step 1:
# This is your Docker ID/path
#alias kubectl="minikube kubectl --"

minikube dockerpath=temmysam/udacity

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run NAME --image=DOCKER_IMAGE --port=YOUR_PORT
minikube kubectl run udacity image=$dockerpath


# Step 3:
# List kubernetes pods
minikube kubectl get pods

# Step 4:
# Forward the container port to a host
minikube kubectl port-forward pod/udacity 8000:80
