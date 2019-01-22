Docker Odoo
===========
Repositorio con varios directorios preparados para arrancar diferentes instancias de Odoo.

Descripción
===========
Repositorio con diferentes directorios para desplegar en paralelo dos contenedores (docker-compose), uno con Odoo y otro con Postgres. De esta forma, se puede desplegar en cualquier momento una instancia de Odoo totalmente funcional.

Cada una de las versiones de Odoo tendrá disponible la gran mayoría de repositorios de la **OCA** (Odoo Community Association) con la rama correspondiente a la versión de Odoo desplegada. Si se necesita algún repositorio de la OCA, o de cualquier otro repositorio, que no se encuentre en el addons-path del archivo de configuración, siempre se podrá descargar el repo correspondiente y agregarlo en el config de la instancia de Odoo. En cada uno de los directorios se explicará más detalladamente los pasos a técnicos a realizar en caso de que se requiera agreagar algún otro repositorio.

Requisitos previos
==================

- **docker**: versión 18 o superior.
- **docker-compose**: versión 1.23 o superior.

Autor
=====
* Sergio Díaz <sdimar@yahoo.com>
