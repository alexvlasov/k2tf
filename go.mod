module github.com/sl1pm4t/k2tf

go 1.14

require (
	github.com/hashicorp/go-multierror v1.1.0
	github.com/hashicorp/hcl v1.0.0
	github.com/hashicorp/hcl2 v0.0.0-20190821123243-0c888d1241f6
	github.com/hashicorp/terraform-plugin-sdk v1.15.0
	github.com/hashicorp/terraform-provider-kubernetes v1.13.3
	github.com/iancoleman/strcase v0.0.0-20191112232945-16388991a334
	github.com/jinzhu/inflection v1.0.0
	github.com/mitchellh/reflectwalk v1.0.1
	github.com/rs/zerolog v1.19.0
	github.com/sirupsen/logrus v1.6.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.6.1
	github.com/zclconf/go-cty v1.6.1
	k8s.io/api v0.19.1
	k8s.io/apimachinery v0.19.1
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/kube-aggregator v0.19.1
)

// Override invalid go-autorest pseudo-version. This can be removed once
// all transitive dependencies on go-autorest use correct pseudo-versions.
// See https://tip.golang.org/doc/go1.13#version-validation
// and https://github.com/Azure/go-autorest/issues/481
replace (
	github.com/Azure/go-autorest v11.1.2+incompatible => github.com/Azure/go-autorest v12.1.0+incompatible
	github.com/go-openapi/spec => github.com/go-openapi/spec v0.19.3
	github.com/sl1pm4t/k2tf/pkg/k8sparser => ./pkg/k8sparser
	github.com/sl1pm4t/k2tf/pkg/tfkschema => ./pkg/tfkschema
	// k8s.io/client-go => k8s.io/client-go v0.0.0-20190918160344-1fbdaa4c8d90
	k8s.io/client-go => k8s.io/client-go v0.19.1
)
