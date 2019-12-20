# tflock

Lock your Terraform state manually.

# Why

Terraform has a state lock mechanism and it works automatically. Nevertheless, I found it's useful to lock state manually when I don't want team members to touch code during refactorings of Terraform configurations.
Terraform has the `terraform force-unlock` command for when somthing goes wrong, and it doesn't provide the `terraform lock` command. It seems that this decision was by design. Not all backend types can acquire explicit lock. For more details, see https://github.com/hashicorp/terraform/issues/17203

But I want `terraform lock` command!

# Features

- Lock your Terraform state manually.

That's all.

I'm testing in Terraform 0.12 + backend type s3 (lock with dynamodb).
Other backend types may or may not work.

# Install

Required: Go 1.13+.

```
$ go get github.com/minamijoyo/tflock
```

# License
MIT
