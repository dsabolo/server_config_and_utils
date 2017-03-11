My Development & Testing Boxes
==============================

Este repositorio incluye configuraciones para mis máquinas virtuales para desarrollo y testing.

 

 

Requisitos
----------

1.  Instalar Virtual Box (Yo tengo instalado la versión 5.1.6 en OSX y Windows)

2.  Instalar Vagrant (Yo tengo instalado versión 1.8.6)

 

 

Plugins Vagrant
---------------

-   vagrant-auto_network (1.0.2)

-   vagrant-hostsupdater (1.0.2)

-   vagrant-share (1.1.5, system)

-   vagrant-vbguest (0.13.0)

-   vagrant-winnfsd (1.3.1) (Solo si estas trabajando en una PC windows)

 

Usando Vagrant
--------------

Situarse en el directorio del
proyecto y lugo ejecutar:

 


~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vagrant init -m ubuntu/trusty64
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Nota versiones de ubuntu
ubuntu/trusty64: 14.04
ubuntu/xenial64:   16.04   
 

 

**Aplicar la config (usando el provisioning)**


Agregar al Vagrantfile

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
config.vm.provision "path/to/archivo_de_config.sh"
config.vm.network "forwarded_port", guest: 80, host: 80
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


Luego:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
vagrant up
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

 
