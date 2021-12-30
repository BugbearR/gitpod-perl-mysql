FROM gitpod/workspace-mysql

ENV APACHE_DOCROOT_IN_REPO=public

#RUN apt-get update -q \
#    && a2enmod cgi \
#    && apt-get clean \
#    && rm -rf /var/cache/apt/* /var/lib/apt/lists/*

RUN a2enmod cgi

COPY apache2/apache2.conf /etc/apache2/
