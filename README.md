# crap-bag
Vulnerable and Generally Bad Infrastructure-as-Code

![crapbag](crapbag.gif)

- [Terraform](#terraform)

## Terraform

### terraform backend

| Policy | Level | Description |
| ------ | ----- | ----------- |
| DOMI-AWS-003 | Deny | Terraform backend encryption is set to false. |


### s3

| Policy | Level | Description |
| ------ | ----- | ----------- |
| DOMI-AWS-001 | Warn | S3 - No tags founds. |
| DOMI-AWS-002 | Warn | S3 - Empty tags block. |
| DOMI-AWS-004 | Deny | S3 - Versioning is not enabled. |
| DOMI-AWS-005 | Deny | S3 - Server-side encryption not configured. |
| DOMI-AWS-006 | Deny | S3 - MFA-Dele
