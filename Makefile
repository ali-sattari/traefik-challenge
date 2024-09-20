# Define the cluster name
CLUSTER_NAME=local-cluster

# Create a local Kubernetes cluster using kind
create-cluster:
	kind create cluster --name $(CLUSTER_NAME) --config kind.yaml

# Apply the k8s.yaml configuration to the cluster
deploy:
	kubectl apply -f k8s.yaml

# Delete the local Kubernetes cluster
delete-cluster:
	kind delete cluster --name $(CLUSTER_NAME)

# Combined target to create the cluster and deploy the configuration
all: create-cluster deploy
