# Terraform Blocks Exercise

## Overview

This project serves as an introduction to using different blocks in Terraform to define and manage infrastructure. It covers essential Terraform constructs like variables, data sources, resources, outputs, and providers.

The goal of this exercise is to build 
1. a simple infrastructure using Terraform, including a Virtual Private Cloud (VPC), subnets, and an EC2 instance, and 
2. to understand how various Terraform blocks interact to define infrastructure-as-code.

## Project Structure

- `provider.tf`: This file contains the configuration for the AWS provider, specifying the region to be used for deploying resources.
- `variables.tf`: This file defines input variables that allow the project to be reusable and configurable.
- `data.tf`: This file fetches dynamic data from AWS services using data sources, such as the latest Amazon Machine Image (AMI) for EC2 instances.
- `locals.tf`: This file contains local values that are computed once and can be reused throughout the project.
- `ec2.tf`: This file defines an EC2 instance, using the AMI fetched by the data source and the variables specified in `variables.tf`.
- `vpc.tf`: This file creates a Virtual Private Cloud (VPC), a subnet, and configures a route table and an internet gateway.
- `output.tf`: This file defines outputs, which display important information like the VPC ID, EC2 instance public IP, and subnet ID after the resources are created.


