
# Kyosk - React Application Deployment

## Table of Contents

- [Kyosk - React Application Deployment](#kyosk---react-application-deployment)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Prerequisites](#prerequisites)
  - [Local Setup with Docker](#local-setup-with-docker)
  - [CI/CD Pipeline with GitHub Actions](#cicd-pipeline-with-github-actions)
  - [Kubernetes Deployment with Minikube](#kubernetes-deployment-with-minikube)
  - [Decisions, Assumptions, and Challenges](#decisions-assumptions-and-challenges)
  - [Screenshots](#screenshots)

## Introduction

Kyosk is a simple React application built with TypeScript and Material-UI, displaying a list of books. This project demonstrates containerization with Docker, CI/CD automation using GitHub Actions, and deployment on Kubernetes using Minikube.

## Prerequisites

-   Docker
-   Minikube
-   kubectl
-   Git
-   Yarn

## Local Setup with Docker
1.  **Build the Docker Image:**
    
    `docker build -t kasiliwachiye/kyosk:latest .` 
    
2.  **Run the Docker Container:**
    
    `docker run -p 80:80 kasiliwachiye/kyosk:latest` 
    
3.  **Access the Application:** Navigate to `http://localhost` in your browser.

## CI/CD Pipeline with GitHub Actions

The CI/CD pipeline is configured using GitHub Actions, automating the build and push of Docker images to Docker Hub.

**Workflow Steps:**

-   Checkout repository
-   Setup Node.js
-   Cache dependencies
-   Install dependencies
-   Run tests
-   Build application
-   Login to Docker Hub
-   Setup QEMU and Buildx
-   Build and push Docker image
## Kubernetes Deployment with Minikube

1.  **Start Minikube:**
    `minikube start` 
    
2.  **Apply Kubernetes Manifests:**
    
    `kubectl apply -f deployment.yml` 
    `kubectl apply -f service.yml` 
    
3.  **Access the Application:**
    `minikube service frontend-service --url` 
    
    Open the provided URL in your browser.

## Decisions, Assumptions, and Challenges

-   **Dockerfile Casing Warning:** Addressed by updating instructions to uppercase to adhere to best practices.
-   **Health Probes Configuration:** Changed from `/books` to `/` to match available endpoints and prevent probe failures.
-   **Deployment Clean-Up:** Manually deleted unnecessary pods to maintain a clean environment.

## Screenshots
![Screenshot (1)](https://github.com/user-attachments/assets/dd867965-478d-4f9b-9571-a4024dec09e2)

![Screenshot (17)](https://github.com/user-attachments/assets/bec0b9b1-31eb-4d95-a558-6bbd65830299)

![hub docker com_(Nest Hub)](https://github.com/user-attachments/assets/75cc557c-aef1-4367-b98a-3edb5dac86b6)
