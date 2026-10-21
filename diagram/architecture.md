# Architecture Diagram — AWS ECS Fargate + ECR + CodeBuild

## Lucid diagram

- **Master Lucid document (all 30 diagrams, icon style):** https://lucid.app/lucidchart/3da75ce3-ea66-4296-81b3-00d20a60435b/edit
- This project is **page 5** of that document.

## Lucid prompt (reusable)

```
Create an AWS architecture diagram titled "AWS ECS Fargate CI/CD".
A Developer starts a CodeBuild job; CodeBuild does a docker push to an ECR registry;
ECS Fargate pulls the image from ECR and runs two tasks; an Application Load Balancer
sends user HTTP traffic to the Fargate tasks. Label arrows (start build, docker push,
image pull, HTTP). Clean, professional AWS colors.
```

## Mermaid source

```mermaid
flowchart LR
    Dev([Developer])
    CB[CodeBuild]
    ECR[(ECR Registry)]
    User([User])
    ALB[Application Load Balancer]
    T1[Fargate Task 1]
    T2[Fargate Task 2]
    Dev -->|start build| CB
    CB -->|docker push| ECR
    ECR -->|image pull| T1
    ECR -->|image pull| T2
    User -->|HTTP| ALB
    ALB --> T1
    ALB --> T2
```
