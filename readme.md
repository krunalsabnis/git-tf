# Run locally

make sure to set
export TF_VAR_github_token="your github token"
export TF_VAR_github_owner="Your github name"

`terraform init`
`terraform plan -var-file=github.tfvars`
`terraform apply  -var-file=github.tfvars`

# Delete repositories

`terraform destroy` does NOT delete repositories.
log in to gitHub and delete repositories manually by following security checks prompted by GitHub
