# 🏗️ Phase 1 – Infrastructure Fundamentals

## Why this phase exists

Before touching Kubernetes, I wanted to be very clear about one thing:

> If Kubernetes breaks later, I should be confident that the infrastructure is not the problem.

Phase 1 is about building **clean, predictable infrastructure** that Kubernetes can safely run on.  
No containers, no kubeadm, no automation beyond provisioning.

---

## What was built

In this phase, I created the following:

- A dedicated VPC with a private IP range
- A public subnet (used intentionally for learning and easier access)
- Internet Gateway and routing
- A security group that allows required access and internal communication
- Four EC2 instances:
  - 1 node intended to be the Kubernetes control plane
  - 3 nodes intended to be Kubernetes workers

At this point, all instances are just **plain Ubuntu machines**.

---

## Key design decisions

### Private networking

All nodes communicate with each other using **private IP addresses** inside the VPC.

This is critical because Kubernetes components (API server, kubelet, pod networking) expect reliable, direct node-to-node communication. Relying on public IPs would introduce unnecessary complexity and failure points.

---

### Security group design

Node-to-node communication is allowed freely **within the same security group**.

This is required for:
- kubelet talking to the API server
- control plane to worker communication
- future pod-to-pod traffic

If this is wrong, Kubernetes usually fails in confusing ways, so getting this right upfront was important.

---

### Public subnet (intentional choice)

A public subnet is used here to:
- Make SSH access simple
- Reduce friction during early learning and debugging

In a real production setup, this would typically be replaced with private subnets and controlled access (for example, via a bastion host).

---

## How I verified this phase

Before moving on, I verified:

- SSH access to all nodes
- The master node can ping all workers using private IPs
- Workers can ping the master using private IPs

Only after these checks passed did I consider Phase 1 complete.

---

## What this phase intentionally does NOT include

- No container runtime installation
- No Kubernetes components
- No configuration management

Those concerns are handled in **Phase 2**, once the infrastructure layer is known to be solid.

