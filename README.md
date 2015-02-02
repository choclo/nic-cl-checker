# nic-cl-checker
Domain Checker for NIC Chile

Español
-------
NIC-CL Checker es un pequeño script que permite a partir de una llamada por shell en linux, chequear si el dominio se 
encuentra disponible en <http://www.nic.cl> y de ser así, envía un correo a través del servidor para notificar y así
comprar el dominio apenas se encuentre disponible. La idea es correrlo a través de un cron una vez al día.

### Como se usa ###
Bajar el código y agregarlo en un archivo .rb. Se puede llamar de la siguiente forma:

$ ruby chkdomain.rb dominio.cl

Donde dominio.cl es el dominio a chequear. Notar que es posible agregar varios dominios en la misma línea, separadas por 
un espacio:

$ ruby chkdomain.rb dominio.cl otrodominio.cl etcdominio.cl

La finalidad última es agregarlo a un cron una vez por día y recibir notificaciones automáticas en caso de que tu dominio
se haga disponible.

English
-------
