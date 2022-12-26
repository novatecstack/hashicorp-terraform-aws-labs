# Terraform Basics

## Section-2.1: Setting-up environment for Terraform
   - Install Terraform
   - Install Editor (VS Code)
   - Install Git

## Section-2.2: Understanding Terraform Basics
   - Terraform Providers
   - Terraform Modules
   - Terraform Resources
   - How Terraform works? 

## Section-2.3: How to structure a Terraform Project?
   Putting all code in main.tf is a good idea when you are getting started or writing an example code. 
   In all other cases you will be better having several files split logically like this:
   
   - main.tf - call modules, locals, and data sources to create all resources
   - variables.tf - contains declarations of variables used in main.tf
   - outputs.tf - contains outputs from the resources created in main.tf
   - versions.tf - contains version requirements for Terraform and providers
   
   terraform.tfvars should not be used anywhere except composition.