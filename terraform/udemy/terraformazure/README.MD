> Doc at learning terraform course in Udemy: udemy.com/course/terraformazure
---

> Plugins and projects

    - infracost.io / github.com/infracost/infracost

1. Pre-requisites
    - az-cli
    ```
    https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli-linux
    ```
    - terraform
    ```
    https://learn.hashicorp.com/tutorials/terraform/install-cli
    ```

2. Terraform components
    ```
    [ core ]
    - config
    - state
    - terraform plan

    [ providers ]
    - azure
    - aws
    - gcp
    - etc...
    ```

3. Basic commands
    ```
    $ terraform init
    $ terraform validade
    $ terraform plan
    $ terraform apply
    $ terraform show
    
    $ terraform destroy
    $ terraform plan --destroy
    ```
4. Basic folder structure
    ```
    .
    ├── main.tf
    ├── outputs.tf
    └── variables.tf
    ```

5. Complete folder structure
    ```
    .
    ├── README.md
    ├── main.tf
    ├── variables.tf
    ├── outputs.tf
    ├── ...
    ├── modules/
    │   ├── nestedA/
    │   │   ├── README.md
    │   │   ├── variables.tf
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   ├── nestedB/
    │   ├── .../
    ├── examples/
    │   ├── exampleA/
    │   │   ├── main.tf
    │   ├── exampleB/
    │   ├── .../
    ```

6. Providers list
    ```
    https://registry.terraform.io/browse/providers
    ```

7. ...