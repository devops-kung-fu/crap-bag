# crap-bag
Vulnerable and Generally Bad Infrastructure-as-Code

![crapbag](crapbag.gif)

- [Terraform](#terraform)

## Terraform

### terraform backend

| Policy | Level | Description |
| ------ | ----- | ----------- |
| DOMI-AWS-001 | Warn | No tags founds. |
| DOMI-AWS-002 | Warn | Empty tags block. |
| DOMI-AWS-003 | Deny | Terraform backend encryption is set to false. |


### s3

| Policy | Level | Description |
| ------ | ----- | ----------- |
| DOMI-AWS-004 | Deny | Versioning is not enabled. |
| DOMI-AWS-005 | Deny | Server-side encryption not configured. |
| DOMI-AWS-006

