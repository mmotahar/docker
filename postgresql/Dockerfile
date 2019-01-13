FROM postgres:9.6
LABEL AUTHOR="Sergio Díaz"

USER postgres
ADD scripts /docker-entrypoint-initdb.d
CMD ["postgres"]
