FROM registry.access.redhat.com/ubi8/ubi
LABEL maintainer="Valentino Uberti <vuberti@redhat.com>"
RUN dnf install -y httpd-tools
COPY ./example.sh /tmp
CMD ["sleep", "3600"]