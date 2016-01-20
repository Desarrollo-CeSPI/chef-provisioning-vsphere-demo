# Chef Provisioing con VMWare vsphere

Este repositorio sirve de modelo para probar la creacion de un nodo con chef
usando chef-provisioning y VMWare vsphere

## Antes de comnezar

Es necesario disponer de: 

* Acceso al server con vsphere con un usuario con privilegios
* Disponer de un template de una VM que tenga instalado:
  * VMWare tools
  * Blacklist del driver i2c_pi4
* Crear una politica de vm donde se configure una dirección IP que no se utilice
  de forma estática (esto es necesario para que chef-provisioning pueda
  configurar la dirección IP de la VM)

## Instalar chefdk

Instalar chefdk, de ser posible la versión 0.10.0. Al escribir este documento,
no existía tal versión de forma estable, por lo que se debe instalar como se
explica en el README de [chefdk](https://github.com/chef/chef-dk#linux-and-osx) 

### Instalar la gema de `chef-provisioning-vsphere`

Correr el siguiente comando luego de haber instalado chefdk: 

```
chef gem install chef-provisioning-vsphere
```

## Configurar los datos de VMWare vsphere según su infraestructura

Analizar el contenido del archivo provisto por este mismo repositorio llamado
`vmware.sample.json` copiándolo en `vmware.json` y modificando según corresponda
a la configuración de su infraestructura

## Probar la creación de una VM

Ya con chefdk instalado, y el shell configurado según espcifica chefdk, correr:

```
chef-client -j vmware.json -z -o 'prueba::provision'
```

## Eliminar la vm creada

Correr

```
chef-client -j vmware.json -z -o 'prueba::destroy'
```
