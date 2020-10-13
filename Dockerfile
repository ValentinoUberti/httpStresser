FROM registry.access.redhat.com/ubi8/ubi
LABEL maintainer="Valentino Uberti <vuberti@redhat.com>"
RUN dnf install -y httpd-tools
ENTRYPOINT ["/usr/bin/ab"]