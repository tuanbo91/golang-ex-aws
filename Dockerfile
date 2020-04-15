FROM image-registry.openshift-image-registry.svc:5000/openshift/golang:1.11

USER nobody

RUN mkdir -p /go/src/github.com/openshift/golang-ex
WORKDIR /go/src/github.com/openshift/golang-ex

COPY . /go/src/github.com/openshift/golang-ex
RUN go build

CMD ["./golang-ex"]
