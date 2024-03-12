# terraform-app-digitalocean

This project is a Terraform configuration for deploying a SvelteKit application on DigitalOcean.

## Prerequisites

Before getting started, make sure you have the following:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- A DigitalOcean account. If you don't have one, you can sign up [here](https://cloud.digitalocean.com/registrations/new).

## Getting Started

1. Clone this repository to your local machine:

    ```shell
    git clone https://github.com/your-username/terraform-app-digitalocean.git
    ```

2. Change into the project directory:

    ```shell
    cd terraform-app-digitalocean/terraform
    ```

3. Initialize Terraform:

    ```shell
    terraform init
    ```

4. Customize the configuration:

    Open the `variables.tf` file and update the variables according to your requirements. You can specify the DigitalOcean region, droplet size, and other settings.

5. Deploy the infrastructure:

    ```shell
    terraform apply
    ```

    This will create the necessary resources on DigitalOcean.

6. Access your application:

    Once the deployment is complete, you will see the IP address of the created droplet in the Terraform output. Use this IP address to access your application.

7. Destroy the infrastructure:

    To destroy the infrastructure and remove all resources created by Terraform, run the following command:

    ```shell
    terraform destroy
    ```
