# nic-cl-checker
Domain Checker for NIC Chile

Español
-------
NIC-CL Checker es un pequeño script que permite a partir de una llamada por shell en linux, chequear si el dominio se 
encuentra disponible en <http://www.nic.cl> y de ser así, envía un correo a través del servidor para notificar y así
comprar el dominio apenas se encuentre disponible. La idea es correrlo a través de un cron una vez al día.

### Como se usa ###
Bajar el código y agregarlo en un archivo .rb (o usa el mismo nombre de descarga). Se puede llamar de la siguiente forma:

$ ruby chkdomain.rb dominio.cl

Donde dominio.cl es el dominio a chequear. Notar que es posible agregar varios dominios en la misma línea, separadas por 
un espacio:

$ ruby chkdomain.rb dominio.cl otrodominio.cl etcdominio.cl

La finalidad última es agregarlo a un cron una vez por día y recibir notificaciones automáticas en caso de que tu dominio
se haga disponible.

English
-------
NIC-CL Checker it's a small script which allows from a shell call in linux, to check if a domain is available at 
<http://www.nic.cl> and if so, sends an email through the server to notify and then buy the domain as soon as it becomes 
available. The idea is to run it through a cron job once a day.

### Method of use ###
Download the code and add it to a .rb file (or use the same name as it is here). You can run this in the following form:

$ ruby chkdomain.rb dominio.cl

Where dominio.cl is the domain you want to check. Please note it's possible to add several domains on the same line,
separated by a space:

$ ruby chkdomain.rb dominio.cl otrodominio.cl etcdominio.cl

The ultimate goal is to add a cron job which is executed once a day, and receive automatic notifications in case your 
domain becomes available.