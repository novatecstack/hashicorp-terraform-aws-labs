# Terraform Outputs

## Section-6.1: Terraform Outputs: Overview
- Output values make information about your infrastructure available on the command line, and can expose information for other Terraform configurations to use. 
- Output values are similar to return values in programming languages.

## Section-6.2: Terraform Outputs: Use-cases
   - A child module can use outputs to expose a subset of its resource attributes to a parent module.
   - A root module can use outputs to print certain values in the CLI output after running terraform apply.
   - When using remote state, root module outputs can be accessed by other configurations via a `terraform_remote_state` data source.

## Section-6.3: How to declare a Terraform Output?
 
