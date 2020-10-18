FROM registry.access.redhat.com/ubi8/ubi
LABEL maintainer="Valentino Uberti <vuberti@redhat.com>"
LABEL io.openshift.expose-services="8080:http"

RUN dnf install -y httpd-tools httpd
RUN sed -i "s/Listen 80/Listen 8080/g" /etc/httpd/conf/httpd.conf
RUN rm /etc/httpd/conf.d/welcome.conf
RUN chgrp -R 0 /var/log/httpd /var/run/httpd && \
    chmod -R g=u /var/log/httpd /var/run/httpd
RUN chmod -R g+w /var/www/html

COPY ./virtualhost.conf /etc/httpd/conf.d/results.conf

EXPOSE 8080

COPY ./example.sh /tmp

USER 1001
CMD /usr/sbin/httpd -DFOREGROUND