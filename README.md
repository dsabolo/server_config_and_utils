My Development & Testing Boxes
==============================

Este repositorio incluye mis máquinas virtuales para desarrollo y testing

 

 

Requisitos
----------

1.  Instalar Virtual Box (Yo tengo instalado la versión 5.1.6 en OSX y Windows)

2.  Instalar Vagrant (Yo tengo instalado versión 1.8.6)

 

 

Plugins Vagrant
---------------

-   vagrant-auto\_network (1.0.2)

-   vagrant-hostsupdater (1.0.2)

-   vagrant-share (1.1.5, system)

-   vagrant-vbguest (0.13.0)

-   vagrant-winnfsd (1.3.1) (Solo si estas trabajando en una PC windows)

 

Boxes
-----

Para cualquiera de las opciones, antes que nada, situarse en el directorio del
proyecto y lugo ejecutar:

 

vagrant init

 

Luego editar el archivo **Vagrantfile**, dependiendo la VM que se requiera usar
y modificar la linea **config.vm.box**

 

### Ubuntu 14.04 LTS para desarrollo web (mysql user \> root:password)

**Incluye**: git, mysql, php5, php5-curl, apache, drush, compass, nodejs, npm.  
Mod Rewrite On, Localhost apache apuntando a /vagrant (sincronizada con carpeta
local del proyecto).

 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
config.vm.box = "http://www.criterioweb.com/boxes/ubuntuPhp5Dev .box"
config.vm.network "forwarded_port", guest: 80, host: 8080
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 

 

O si ya tenes el archivo .box, simplemente agregar desde la consola la VM el
nuevo box

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vagrant box add ubuntuPhp5Dev ubuntuPhp5Dev.box
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 

Y luego en el folder del proyecto, remover el Vagrant file si ya existe.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vagrant init -m ubuntuPhp5Dev 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Editar el Vagrantfile y agregar

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
config.vm.network "forwarded_port", guest: 80, host: 8080
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**Método alternativo (usando el provisioning)**

Descargar del repositorio el archivo  de secuencias de bootstrap
(https://github.com/dsabolo/myVagrantBoxes/blob/master/ubuntu\_14\_04\_php\_dev/bootstrap.sh)

 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vagrant init -m ubuntu/trusty64

//Agregar al Vagrantfile
config.vm.provision "path/to/bootstrap.sh"

vagrant up
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 
