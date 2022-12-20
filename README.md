# kafka-cluster-infra
Terraform and Ansible to install a Kafka Cluster

This is a fork that uses terraform version 1.3.6. This setup is based on the Enterprise Confluent Kafka using a public VPC and subnet.

Complete instructions available in [Marcos Lombog's Medium Post](https://medium.com/@mlombog/deploy-a-kafka-cluster-with-terraform-and-ansible-21bee1ee4fb)

# Overview

## What is Terraform?
Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-prem resources safely and efficiently.

## What is Ansible?
Ansible is an open source IT automation tool that automates provisioning, configuration management, application deployment, orchestration, and many other manual IT processes.

## What is Kafka?
Apache Kafka is a distributed data store optimized for ingesting and processing streaming data in real-time.

# Requirements

**Languages** 
* Bash
* HCL
* YAML

**Technologies**
* Ansible
* Terraform
* Kafka
* AWS EC2

**Third-Party Libraries**
* AWS CLI

# Environment Setup
1. Install and configure [AWS CLI](https://aws.amazon.com/cli/)
2. Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
3. Install [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)


# Repository Structure

`./cp-ansible/` contains scripts, packages and configuration files to run confluent platform services

`./terraform/` contains terraform scripts necessary to build kafka infrastructure