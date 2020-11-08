# Git y GitHub

## ¿Por qué hacer uso de Git y GitHub?

El rápido crecimiento de la industria del software, ha permitido el desarrollo de herramientas que facilitan muchas de las tareas para la gestión de un proyecto. Sin tales herramientas el desarrollo de un proyecto, sobre todo cuando en él se involucran muchas personas, se vería comprometido. Cuando en un proyecto se mantiene una gran cantidad de archivos, para mantener con seguridad el trabajo realizado y que el equipo involucrado trabaje sobre ellos de forma colaborativa sin inconvenientes, se han desarrollado diferentes sistemas conocidos como: sistemas de gestión de control de versiones.

Git figura como un sistema de control versiones, que goza de gran popularidad, debido a que marca un paradigma notablemente diferente respecto a otros sitemas decontrol de versiones. GitHub por su lado, es una herramienta diseñada para la gestión de proyectos colaborativos en la web que integra a Git como una de sus herramientas principales, permitiendo que personas de diferente latitudes del planeta puedan trabajar en proyectos a gran escala. GitHub se ha convertido en uno sitios con mayor número de repositorios y herramienta preferida para desarrolladores y científicos.

Como se ha mencionado Git y GitHub no son las únicas herramientas para realizar las tareas descritas, sin embargo, porque gozan de una gran popularidad y utilidad es importante aprender a trabajar con ellas.

## Git como sistema de control de versiones

Git nace a ríz de la necesidad de un software para continuar con el desarrollo del kernel de linux por la comunidad, alrededor del año 2005. La comunidad de linux en el desarrollo del nuevo software, sistema de control de versiones, buscó y consiguó las siguientes características:
- Velocidad
- Diseño sencillo
- Soporte para un desarrollo de trabajo no lineal
- Sistema de control distribuido
- Capacidad de manejar proyectos a gran escala

Git se puede considerar como una base de datos que mantiene instantáneas del conjuto de archivos del proyecto en cada versión de este, lo que permite que se pueda recuperar la forma de un proyecto en una versión específica. Por ello Git es útil cuando han ocurrido diversos errores y no hay forma fácil de solucionar, además, mantiene características con los que es posible integrar el tabajo hecho por muchas personas sobre un mismo conjunto de archivos. A continuación, se ilustra cómo Git mantiene las versiones de un proyecto con el tiempo.

![Ilustración de las versiones de un proyecto en Git](./images/img1.jpg "Ilustración de las versiones de un proyecto en Git")

En cada versión del proyecto se almacena el conjunto de archivos, si uno de ellos no es modificado se mantiene una referencia directa del archivo con la versión anterior.

### Git para trabajo local

La base de datos de git se mantiene de forma local en cada repositorio del disco duro que se desee. Para crear la base de datos de git, y por ende el directorio git, desde la consola ubicado en el directorio deseado, se ejecuta:
~~~bash
$ git init
~~~
Con ello se genera dentro el directorio actual, otro directorio oculto donde vive el repositorio git y la base de datos en formato comprimido. A partir de aquí se puede controlar las versiones del proyecto, que se encuentra en el directorio donde el repositorio y la base de datos git fueron creados, usando todas las herramientas y funcionalidades que Git ofrece.

Por ahora el trabajo se mantiene de forma local, ya que para trabajar en equipo, se necesita de un servidor para comunicar a los diferentes miembros que colaboran en el proyecto. Aquí se justifica el uso de GitHub como herramienta, ya que puede considerarse como el "servidor" para el equipo que  lo uutiliza, porque el repositorio y la base de datos git vive de forma remota.

### Áreas de trabajo en Git

Para un fácil manejo de los archivos modificados y las diferentes versiones del proyecto, se concibe que los archivos pasan por tres estados:
- Confirmado: El archivo ya ha sido almacenado en el repositorio git (de ahora en más llamado repositorio solamente).
- Modificado: El archivo difiere del almacenado en el repositorio.
- Preparado: El archivo modificado está preparado para ser confirmado y por ende para ser guardado en el repositorio el archivo modificado.

A los estados posibles del archivo, se añade, que en Git existen tres estaciones o secciones de trabajo:
- Working Directory (Directorio de trabajo)
- Staging Area (área de ensayo)
- repositorio Git (Almacenamiento de las diferentes versiones del proyecto)

![Áreas de trabajo en Git](./images/img2.jpg "Ilustración de las versiones de un proyecto en Git")

El diagrama anterior puede ser usado para explicar un flujo de trabajo básico en Git. En primer lugar, cada conjunto de archivos que han sido modificados y posteriormente confirmados se constituye en una nueva versión del proyecto. Por esta razón de la imagen anterior, la versión 2 del proyecto es un conjunto de archivos ya confirmados y que ha sido traido al directorio de trabajo para modificarlo. A continuación, se explica un flujo básico de trabajo, proceso que es repetido cuantas veces sea necesario para completar el proyecto:
1. En el directorio de trabajo se modifican los archivos de la versión 2 (A.1, C.3)  y se agregan nuevos (Archivo E, Archivo F). En este punto, los archivos poseen el estado modificado.
2. Cuando los archivos han sido modificados, cada uno de ellos se agregan al area staging, En este punto, los archivos poseen el estado preparado. El comando para gacerlo es:
~~~bash
$ git add <nombre_archivo>
~~~
Si se desea agregar todo el conjunto de archivos modificados se  ejecuta el comando:
~~~bash
$ git  add .
~~~
3. Cuando los archivos se encuentran el área staging y se confirman los cambios, los archivos pasan al repositorio, creando una nueva versión del proyecto. El comando para confirmar los cambios es:
~~~bash
$ git commit -m "<mensaje>"
~~~
El objetivo del mensaje es dar una descripción precisa de los cambios realizados, ello ayudará en el futuro a recordar aspectos claves de la versión del proyecto que se está creando.

### Bifurcando el trabajo

 Con Git es posible mantener en paralelo multiples versiones del proyecto, esta es una de las características que lo hace poderoso. Lo anterior significa que el desarrollo del proyecto no es lineal. El concepto detrás de la características mencionada es "branch" o rama en español. Más alla de ello, es posible incluso fusionar versiones, mediante el proceso llamado "merge".

![Ilustración de un flujo de trabajo simple usando ramas](./images/img3.jpg "Ilustración de las versiones de un proyecto en Git")

Un branch es una versión del proyecto, que inicia a partir de una versión específica. En la imagen se observa que en el flujo de trabajo han existido tres ramas:
- La primera rama lo constituyen los nodos de color azul
- La segunda rama está constituido por los nodos de color anaranjando
- La tercera rama está representada por el único nodo color verde

El conjunto de nodos es conocido como el árbol de confirmaciones, ya que está constituido por todas las versiones del proyecto que son cambios confirmados. De la imagen se observa que, la segunda rama es creada a partir una versión (V1.1) de la primera rama, para hacerlo, al directorio de trabajo se trae la versión a partir de la cual se crea la rama y se ejecuta el siguiente comando:
~~~bash
$ git checkout -b  <nombre_rama_2>
~~~
Con ello, el proyecto ha sido bifurcado por la creación de una nueva rama y en el directorio de trabajo (dentro de la rama nueva) se ha hecho una copia de la versión del proyecto a partir del cual se ha creado la rama. Ahora, pueden hacerce cambios al conjunto de archivos del proyecto y luego confirmarlos, al hacerlo obtenemos otra versión (V2.1) del proyecto que es completamente independiente de la versión del
cual partimos.

El proceso anterior puede ser repetido, conforme al número de ramas que se necesiten. En la imagen se observa que a partir de la versión (V2.1) se crea una nueva rama, que da origen a la versión (V3.1) del proyecto. A continuación, surge la pregunta: ¿cómo puedo llevar a la rama 2 los cambios hechos en la versión (V3.1)? la respuesta es que fusionar las ramas.

Para hacer la fusión, se trae al directorio de trabajo la última versión de la rama 2 con el comando:
~~~bash
$ git checkout <nombre_rama_2>
~~~
Luego se ejecuta el comando que realiza la fusión de las ramas:
~~~bash
$ git merge <nombre_rama_3>
~~~
Después de ejecutar el comando, en la segunda rama se crea una nueva versión (V2.2) del proyecto, que contiene lo realizado en la versión (V2.1) y (V3.2) de forma combinada. En la imagen también se observa que se hace una fusión entre la primera y segunda rama, combinando las versiones (V1.1) y (V2.2) del proyecto y creando la versión (V1.2).

Cuando una de las ramas ya no se necesita, como en el caso de la tercera rama, esta puede ser eliminada mediante el comando:
~~~bash
$ git branch -d <nombre_rama_3>
~~~
En caso de error, por existir cambios que no han sido fusionados con ningún otra rama, se puede forzar el borrado cambiando la "d" por "D" en el comando anterior.
