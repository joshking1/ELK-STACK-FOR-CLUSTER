# ELK-STACK-FOR-CLUSTER

Elasticsearch Stateful Workload

Improvements Made:

RBAC Enhancements: Added the list and watch verbs to the ClusterRole for better service discovery.

Resource Requests and Limits: Set more appropriate resource requests and limits for CPU and memory based on typical Elasticsearch needs.

Health Probes: Included both readiness and liveness probes with appropriate delays and timeouts.

Volume Mounts: Used a specific path for Elasticsearch data storage to ensure proper disk persistence.

Labels and Metadata: Ensured labels are consistent and clear for easier management and monitoring.
