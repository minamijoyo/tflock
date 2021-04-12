# tflock

Lock your Terraform state manually.

# Why

Terraform has a state lock mechanism and it works automatically.
Nevertheless, I found it's useful to lock state manually when refactoring Terraform configurations.

In team development, Terraform configurations are generally managed by VCS such as git, and states are shared via a remote state storage which outside of version control. Most Terraform refactorings require not only configuration changes but also state manipulations such as state mv / rm / import. It is not desirable to change state before merging configuration changes. My colleague may be working for another task. I don't want team members to change the state during refactoring to avoid unexpected conflicts.

Terraform has the `terraform force-unlock` command in case something goes wrong, however it doesn't provide the `terraform lock` command.
It seems that this decision was intentional by design. Not all backend types can acquire explicit lock.
For more details, see https://github.com/hashicorp/terraform/issues/17203

But I want `terraform lock` command!

NOTICE: I had written the tflock for refactoring Terraform configurations, but after using it, I figured out a more sophisticated way and I wrote a new tool: [tfmigrate](https://github.com/minamijoyo/tfmigrate). If your concern is only refactoring, I highly recommend you to use the tfmigrate rather than the tflock.

# Features

- Lock your Terraform state manually.

That's all.

Currently, it is tested only with Terraform 0.14 + AWS S3 (locked with DynamoDB).

The tflock uses a state lock function as same as Terraform uses under the hood.
So other backend types may or may not work.

# Prerequisites

State locking must be enabled in your Terraform backend configuration.

If you haven't set it up yet, see Terraform documentation:
https://www.terraform.io/docs/state/locking.html

# Install

Required: Go 1.15+.

* Clone tflock repo

```
$ cd tflock
$ go build .

$ tflock --version
0.0.1
```

# Usage

To lock your Terraform state, run `tflock` command in the same directory where you run the `terraform init` command.

```
$ tflock
```

If you want to check if locked successfully , use `terraform plan` command.

If you want to unlock, use `terraform force-unlock` command.

# License
MIT

