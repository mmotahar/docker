FROM postgres:10
LABEL AUTHOR="Sergio Díaz <sdimar@yahoo.com>"
USER postgres
ADD scripts /docker-entrypoint-initdb.d
CMD ["postgres"]
