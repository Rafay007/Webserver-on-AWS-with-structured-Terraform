# IaC Terraform Project: Deploying Simple Apache Web Server on AWS EC2

This project is a demonstration of a well-structured Infrastructure as Code (IaC) Terraform that can be used to deploy a simple Apache web server on AWS EC2 and make it available on the internet with security concepts. 

## Getting Started

To run the project, follow the steps below:

1. Clone the repository to your local machine.

2. Navigate to the project directory.

3. Run the command `terraform init` in order to prepare the working directory for use with Terraform.

4. Run the command `terraform validate` to validate the configuration files in your directory. This command does not access any remote state or services.

5. Run the command `terraform plan -out=<path>` to save the plan file to a given path. This plan file can then be passed to the `terraform apply` command.

6. Run the command `terraform apply -auto-approve` to apply changes without having to interactively type 'yes' to the plan. This command is useful in automation CI/CD pipelines.

## Prerequisites

- AWS account
- Terraform installed on the local machine
- Basic understanding of AWS EC2 and security concepts

## Project Structure

The project contains the following files:

- `main.tf`: This file contains the main Terraform code that defines the resources to be provisioned on AWS.

- `variables.tf`: This file contains the input variables required by the `main.tf` file.

- `outputs.tf`: This file contains the output variables that are returned after the Terraform deployment is complete.

- `terraform.tfvars`: This file contains the values for the input variables declared in the `variables.tf` file.

## Terraform Modules

The project uses the following Terraform modules:

- `terraform-aws-modules/security-group/aws`: This module creates an AWS security group for the EC2 instance.

- `terraform-aws-modules/ec2-instance/aws`: This module creates an EC2 instance on AWS.

## Security

The project incorporates the following security concepts:

- A security group is defined for the EC2 instance to control inbound and outbound traffic.

- The EC2 instance is launched in a private subnet with no public IP address, and it communicates with the internet through a NAT gateway in a public subnet.

- SSH access to the EC2 instance is restricted to a specific IP address range.

## Outputs

After the Terraform deployment is complete, the project returns the following outputs:

- `public_ip`: The public IP address of the EC2 instance.

- `public_dns`: The public DNS name of the EC2 instance.

## Conclusion

This project demonstrates a well-structured IaC Terraform that can be used to deploy a simple Apache web server on AWS EC2 and make it available on the internet with security concepts.
