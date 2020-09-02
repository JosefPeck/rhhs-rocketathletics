FROM httpd:2.4

COPY ./here-httpd.conf /usr/local/apache2/conf/httpd.conf
VOLUME /usr/local/apache2/htdocs
