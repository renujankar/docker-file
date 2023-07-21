FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs/
EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
