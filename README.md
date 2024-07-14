# Terraform + GCP

## Run the Terraform commands:

Initialize Terraform: This command initializes the `Terraform` working directory and downloads the required provider `plugins`.

```bash
 terraform init
```

Apply the Terraform configuration: This command creates the resources defined in the `main.tf` file.

```bash
terraform apply
```
   
> You'll be prompted to confirm the creation of resources. Type `yes` to proceed.

Access your website: Once the Terraform script finishes running, it will output the `URL` of your bucket. You can access your `index.html` file at http://my-website-bucket.storage.googleapis.com.
