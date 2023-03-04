#
# .-'_.---._'-.
# ||####|(__)||   Protect your secrets, protect your business.
#   \\()|##//       Secure your sensitive data with Aegis.
#    \\ |#//                    <aegis.ist>
#     .\_/.
#

# builder image
FROM golang:1.20.1-alpine3.17 as builder

RUN mkdir /build
ADD *.go /build/
ADD go.mod /build/
WORKDIR /build
RUN CGO_ENABLED=0 GOOS=linux go build -a -o aegis-workload-demo .

# generate clean, final image for end users
FROM alpine:3.17

LABEL "maintainers"="Volkan Özçelik <volkan@aegis.ist>"
LABEL "version"="1.3.0"
LABEL "website"="https://aegis.ist/"
LABEL "repo"="https://github.com/zerotohero-dev/aegis-workload-demo-using-sidecar"
LABEL "documentation"="https://aegis.ist/docs/"
LABEL "contact"="https://aegis.ist/contact/"
LABEL "community"="https://aegis.ist/contact/#community"
LABEL "changelog"="https://aegis.ist/changelog"

COPY --from=builder /build/aegis-workload-demo .

# executable
ENTRYPOINT [ "./aegis-workload-demo" ]
CMD [ "" ]
