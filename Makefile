#
# .-'_.---._'-.
# ||####|(__)||   Protect your secrets, protect your business.
#   \\()|##//       Secure your sensitive data with Aegis.
#    \\ |#//                    <aegis.ist>
#     .\_/.
#

VERSION=0.13.5
PACKAGE=aegis-workload-demo-using-sidecar
REPO=z2hdev/aegis-workload-demo-using-sidecar
REPO_LOCAL="localhost:5000/aegis-workload-demo-using-sidecar"

all: build bundle push deploy

all-local: build bundle push-local deploy-local

build:
	./hack/build.sh $(PACKAGE)

run:
	./hack/run.sh

bundle:
	./hack/bundle.sh $(PACKAGE) $(VERSION)

push:
	./hack/push.sh $(PACKAGE) $(VERSION) $(REPO)

push-local:
	./hack/push-local.sh  $(PACKAGE) $(VERSION) $(REPO_LOCAL)

deploy:
	./hack/deploy.sh

deploy-local:
	./hack/deploy-local.sh

run-in-container:
	./hack/run-in-container.sh $(PACKAGE)  $(VERSION)
