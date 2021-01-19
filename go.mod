module github.com/minamijoyo/tflock

go 1.15
replace k8s.io/client-go => k8s.io/client-go v0.0.0-20190620085101-78d2af792bab
replace google.golang.org/grpc v1.31.1 => google.golang.org/grpc v1.27.1

require (
	github.com/hashicorp/logutils v1.0.0
	github.com/hashicorp/terraform v0.14.4
	github.com/mitchellh/cli v1.1.2
	k8s.io/client-go v10.0.0+incompatible
)
