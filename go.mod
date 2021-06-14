module github.com/klaviyo/tflock

go 1.16

replace google.golang.org/grpc v1.31.1 => google.golang.org/grpc v1.27.1

replace k8s.io/client-go => k8s.io/client-go v0.0.0-20190620085101-78d2af792bab

require (
	github.com/hashicorp/logutils v1.0.0
	github.com/hashicorp/terraform v0.15.1
	github.com/mitchellh/cli v1.1.2
)
