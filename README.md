# Code Challenge


## Descripción

Esta aplicación permite el subir un archivo en texto plano con extención .tab e insertar los datos en la base de datos



## Requerimientos


Estre proyecto requiere de las siguientes instalaciones:
* Ruby 2.7.x 
* Rails 6.0.x 
* Mysql 8.0.x
* Yarn 1.22.4
* Node js 12.18.1 


## Instalacion

* [Instalar Ruby para Linux/MacOS](https://www.ruby-lang.org/es/documentation/installation/)
* [Instalar MySQL para Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04-es)
* [Instalar MySQL para MacOS](https://dev.mysql.com/doc/refman/8.0/en/osx-installation-pkg.html)
* [Instalar Node js para multiples sistemas operativos](https://nodejs.org/es/download/package-manager/)
* [Instalar Yarn para multiples sistemas operativos](https://classic.yarnpkg.com/en/docs/install/#debian-stable)

## Instalación de librerias


Instalacion de librerias de Mysql 

En ubuntu
```bash
sudo apt-get libmysqlclient-dev 
```
En MacOS
```bash
brew install mysql-client
```
## Instalar rails 
Para la instalación de Rails es necesario instalar la gema

```bash
 gem install rails 
```
Esta instalara la ultima version 6.0.x

## Descargar proyecto
Una vez realizadas las instalaciones necesarias se procedera a descargar los archivos del proyecto.

En un directorio de su equipo ingrese el siguente comando: 

```bash
git clone https://github.com/Alexis077/CodeChallenge.git
```
Cuando los archivos se descargen ejecutar el siguente comando

```bash
bundle install
```

Para instalar las dependencias de JavaScript ejecutar 

```bash
yarn install
```

## Crear base de datos 

Para crear la base de datos ir a la configuración del archivo database.yml y poner los 
datos que correspondan al username y password de su instalacion de MYSQL

```
default: &default
  adapter: mysql2
  pool: 5
  timeout: 5000
  username: root
  password: 'root'
  socket: /var/run/mysqld/mysqld.sock
  encoding: utf8

```
Luego de ingresar los datos de su instalación se procede a crear la base de datos 
con el comando 

```bash
RAILS_ENV=production rake db:create
```
Una vez creada la base de datos se realizan las migraciones
```bash
RAILS_ENV=production rake db:migrate
```

## Iniciar el servidor 

Para iniciar el servidor primero se compilaran los assets con el comando

```bash
RAILS_ENV=production rake webpacker:compile
```
Y luego

```bash
RAILS_ENV=production rake assets:precompile
```
Luego de compilar los assets ya se puede poner en marcha el proyecto
```bash
rails s -e 'production'
```
