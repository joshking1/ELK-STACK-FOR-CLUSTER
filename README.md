# ELK-STACK-FOR-CLUSTER

Elasticsearch Stateful Workload

Improvements Made:

RBAC Enhancements: Added the list and watch verbs to the ClusterRole for better service discovery.

Resource Requests and Limits: Set more appropriate resource requests and limits for CPU and memory based on typical Elasticsearch needs.

Health Probes: Included both readiness and liveness probes with appropriate delays and timeouts.

Volume Mounts: Used a specific path for Elasticsearch data storage to ensure proper disk persistence.

Labels and Metadata: Ensured labels are consistent and clear for easier management and monitoring.

# Why adding a service account to Curator is important 

Best Practices:

Using a service account for any workload that interacts with the Kubernetes API or other services within the cluster is a recommended best practice. 

It ensures that the workload runs with a specific, identifiable identity, and it helps in auditing and tracking actions performed by that job.

Service Accounts in Kubernetes are used to provide an identity to pods, allowing them to interact with the Kubernetes API or other services within the cluster securely.

By associating a service account with the CronJob, you can control the permissions and access the job has. For example, if the Curator job needs to access Kubernetes resources (like secrets or config maps), the service account can be granted the necessary permissions via Role-Based Access Control (RBAC).
