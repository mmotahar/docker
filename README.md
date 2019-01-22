Docker Odoo
===========
Repositorio con varios directorios preparados para arrancar diferentes instancias de Odoo.

Descripción
===========
Repositorio con diferentes directorios para desplegar en paralelo dos contenedores (docker-compose), uno con Odoo y otro con Postgres. De esta forma, se puede desplegar en cualquier momento una instancia de Odoo totalmente funcional.

Cada una de las versiones de Odoo tendrá disponible la gran mayoría de repositorios de la **OCA** (Odoo Community Association) con la rama correspondiente a la versión de Odoo desplegada. Si se necesita algún repositorio de la OCA, o de cualquier otro repositorio, que no se encuentre en el addons-path del archivo de configuración, siempre se podrá descargar el repo correspondiente y agregarlo en el config de la instancia de Odoo. En cada uno de los directorios se explicará más detalladamente los pasos a técnicos a realizar en caso de que se requiera agreagar algún otro repositorio.

Requisitos previos
==================
- **docker-ce**: versión 18 o superior.
- **docker-compose**: versión 1.23 o superior.
- **SO Linux**: aunque los contenedores de Odoo corren sobre Debian de forma independiente al host, los scripts para obtener los repositorios se ejecutan directamente en el host, con lo que es necesario arrancar los contenedores con una máquina corriendo bajo un SO Linux. Concretamente las pruebas han sido realizadas en Ubuntu 16.04 y 18.10 LTS.

**Nota:** En la raiz del repositorio está localizado un script llamado **get_docker_ce.sh**, el cual instala en el equipo las versiones requeridas de **docker-ce** y **docker-compose**.

Autor
=====
* Sergio Díaz <sdimar@yahoo.com>
