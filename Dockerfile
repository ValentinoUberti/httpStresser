FROM ubi8/ubi:8.2
LABEL maintainer="Valentino Uberti <vuberti@redhat.com>"
RUN dnf install -y httpd-tools
ENTRYPOINT ["/usr/bin/ab"]