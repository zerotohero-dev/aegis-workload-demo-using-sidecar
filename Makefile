#
# .-'_.---._'-.
# ||####|(__)||   Protect your secrets, protect your business.
#   \\()|##//       Secure your sensitive data with Aegis.
#    \\ |#//                  <aegis.z2h.dev>
#     .\_/.
#

VERSION=0.12.55
PACKAGE=aegis-workload-demo-using-sidecar
REPO=z2hdev/aegis-workload-demo-using-sidecar
REPO_LOCAL="localhost:5000/aegis-workload-demo-using-sidecar"

all: build bundle push deploy

all-local: build bundle push-local deploy-local

build:
	go build -o ${PACKAGE}

run:
	go run main.go

bundle:
	go mod vendor
	docker build . -t ${PACKAGE}:${VERSION}

push:
	docker build . -t ${PACKAGE}:${VERSION}
	docker tag ${PACKAGE}:${VERSION} ${REPO}:${VERSION}
	docker push ${REPO}:${VERSION}

deploy:
	kubectl apply -f ./k8s/ServiceAccount.yaml
	kubectl apply -f ./k8s/Deployment.yaml
	kubectl apply -f ./k8s/Identity.yaml
	kubectl apply -f ./k8s/Secret.yaml

push-local:
	docker build . -t ${PACKAGE}:${VERSION}
	docker tag ${PACKAGE}:${VERSION} ${REPO_LOCAL}:${VERSION}
	docker push ${REPO_LOCAL}:${VERSION}

deploy-local:
	kubectl apply -f ./k8s/ServiceAccount.yaml
	kubectl apply -k ./k8s
	kubectl apply -f ./k8s/Identity.yaml
	kubectl apply -f ./k8s/Secret.yaml

run-in-container:
	docker run ${PACKAGE}:${VERSION}
