# 🏗️ 3-Tier Architecture Project

This repository documents my journey of building a **3-tier application architecture** from the ground up.

The goal of this project is not just to “get things running”, but to understand **why each layer exists** and how real-world DevOps systems are built — starting from infrastructure and gradually moving toward production-style Kubernetes, GitOps, and observability.

This project is built step by step, with clear boundaries between tools and phases.

---

## 🎯 What I’m trying to learn here

- How infrastructure should be designed **before Kubernetes**
- How Kubernetes actually comes to life (not managed services)
- How a real 3-tier application works inside a cluster
- How GitOps changes the deployment model
- How monitoring and failure handling fit into the picture

This is intentionally **learning-first**, not shortcut-driven.

---

## 🧱 High-level architecture

- Infrastructure provisioned using **Terraform**
- Kubernetes bootstrapped using **Ansible + kubeadm**
- Applications running on **Kubernetes**
- GitOps using **Argo CD**
- Monitoring with **Prometheus and Grafana**

---

## 🧭 Project phases

1. 🏗️ **Phase 1 – Infrastructure fundamentals**  
   VPC, subnetting, routing, security groups, EC2 instances

2. ⚙️ **Phase 2 – Kubernetes bootstrap**  
   containerd, kubeadm, control plane setup, worker join

3. 📦 **Phase 3 – Kubernetes core concepts**  
   Deployments, Services, ConfigMaps, Secrets

4. 🧩 **Phase 4 – 3-tier application**  
   Frontend, Backend API, Database (stateful workload)

5. 🔄 **Phase 5 – GitOps**  
   Argo CD and Git as the source of truth

6. 📊 **Phase 6 – Observability & reliability**  
   Metrics, dashboards, alerts, and failure scenarios

---

## 📚 Documentation

Each phase is documented in detail under the [`docs/`](./docs) directory.  
The focus there is **reasoning and decisions**, not just commands.

---

## ⚠️ Note

This project uses a **single-master Kubernetes cluster** for learning purposes.  
It is not meant to represent a production HA setup.

