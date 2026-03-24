# Terraform Docker Lab

Projet Terraform modulaire permettant de déployer une infrastructure locale Docker avec :

- une **webapp** basée sur **Nginx**
- une **database** basée sur **PostgreSQL**
- une séparation par **modules**
- des environnements **dev** et **prod**
- une gestion des variables sensibles
- une base pour évoluer vers un **remote state**

---

## Objectif

Ce projet a pour but de mettre en pratique les fondamentaux suivants de Terraform :

- création de ressources avec le provider Docker
- modularisation de l’infrastructure
- gestion des variables et des outputs
- utilisation d’environnements distincts
- compréhension du cycle Terraform :
  - `init`
  - `plan`
  - `apply`
  - `destroy`

---

## Stack utilisée

- **Terraform** `>= 1.6`
- **Docker**
- Provider Terraform :
  - `kreuzwerker/docker ~> 3.0`

---

## Structure du projet

```bash
infra/terraform/
├── modules/
│   ├── webapp/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── database/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── terraform.tfvars
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       └── terraform.tfvars
└── .gitignore
