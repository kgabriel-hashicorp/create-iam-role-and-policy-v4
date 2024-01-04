
# terraform template
This repository contains the standards we recommend having for a root module in Terraform.

## Usage
Describe what this will be used for

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_role_and_policy_v4"></a> [iam\_role\_and\_policy\_v4](#module\_iam\_role\_and\_policy\_v4) | tfe.karla-gabriel.sbx.hashidemos.io/kg-dev/iam-role-and-policy-v4/aws | 1.0.0 |
| <a name="module_test_s3_bucket"></a> [test\_s3\_bucket](#module\_test\_s3\_bucket) | terraform-aws-modules/s3-bucket/aws | 3.14.1 |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.example_bucket](https://registry.terraform.io/providers/hashicorp/aws/5.31.0/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | S3 Bucket Name | `string` | `"kg-test-s3-bucket-for-fun"` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | Enable S3 Versioning | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Reference

Link to the [ModuleStandardizationPage]

## CI Checks

You will need to have GitHub Actions available for this repository.

TODO: For amex template make sure that the workflows have the correct runs-on value

## Module Dependencies

* This module relies on dependabot to manage the module dependencies.
* A PULL REQUEST will automatically be raised if there are new versions of the child modules from either the public or private Terraform Registry.
* The PULL REQUEST will have to approved by the CODEOWNERS.
* More details can be found under ` .github/workflows/README.md `

## Contributing

* Commit messages and PR titles must follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
* Pull requests will need to be reviewed by the CODEOWNERS.

## Maintainers
CODEOWNERS file contain the maintainers of this repository
This can also include a link to a [Slack] Channel 
