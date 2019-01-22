Odoo v11 y PostgreSQL 10
========================
Carpeta para arrancar dos contenedores en paralelo, uno con una instancia de Odoo v11 y otro con PostgreSQL 10.

Uso
===
1. Ejecutar el script **run.sh**.
2. La ejecución del script anterior realizará todos los pasos necesarios para desplegar los dos contenedores de forma paralela. El proceso puede tardar de 5 a 15 minutos, dependiendo de la conexión de Internet.
3. Tras finalizar el proceso, se mostrará la IP de cada contenedor:
  > Las ips de los contenedores son:
  >
  > 172.17.0.3 odoo11
  >
  > 172.17.0.2 odoo11-db

4. Una vez arrancados ambos contenedores, tan sólo queda acceder a la instancia de Odoo con la ip más el puerto especificado en el archivo de configuración. Por defecto viene establecido 8069, pero si se modifica se indicará dicho puerto y listo: **172.17.0.3:8069**

  **Tip 1**: el puerto puede verse también en los contenedores docker que ya están arrancados. con el comando `docker ps` se visualizará el contenedor odoo11 que está en marcha, incluyendo el puerto que está siendo mapeado con el host.

  **Tip 2**: con el comando `docker inspect odoo11 | grep IPAddress` es posible visualizar la IP que tiene asignada el contenedore de odoo11.

Autor
=====
- Sergio Díaz <sdimar@yahoo.com>
