# virtcluster CLI

`virtcluster` is a command-line interface (CLI) tool for creating and managing virtual Kubernetes clusters. It provides a simple and efficient way to provision Kubernetes environments, allowing users to focus on their applications without worrying about the complexities of cluster management.

## Features

- **Cluster Creation:** Create virtual Kubernetes clusters with customizable configurations.
- **Cluster Listing:** List existing virtual clusters along with their details.
- **Cluster Deletion:** Delete virtual clusters when they are no longer needed.
- **Cluster Details:** Retrieve detailed information about a specific virtual cluster.
- **Cluster Access:** Generate kubeconfig files and access virtual clusters.
- **Cluster Management:** Scale nodes, upgrade Kubernetes versions, apply configuration changes, and restart clusters.

# Create a new virtual cluster
virtcluster create <cluster-name> --nodes <num-nodes> --node-type <node-type> --kubernetes-version <version>

# List existing virtual clusters
virtcluster list

# Get details of a specific virtual cluster
virtcluster describe <cluster-name>

# Access the virtual cluster
virtcluster get-credentials <cluster-name>

# Delete a virtual cluster
virtcluster delete <cluster-name>

Feel free to use and customize this Markdown template for your project's README.md file.
