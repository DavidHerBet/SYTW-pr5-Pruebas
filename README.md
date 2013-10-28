Sistemas y Tecnologías Web
==========================
David Hernández Bethencourt

Práctica 5: Añadir pruebas a Rock, Paper, Scissors
-----------------------------------------------------------------------------
La práctica consiste en añadir a la aplicación Rock, Paper, Scissors, de la "[práctica anterior](https://github.com/DavidHerBet/SYTW-pr4-CSS)":
- Pruebas unitarias
- Aplicar desarrollo dirigido por pruebas (TDD) con rspec
- Sesión para llevar los contadores de las partidas (mediante cookies)

Introducción
------------
Las **pruebas unitarias** son una forma de probar el correcto funcionamiento de distintos módulos de código. Esto sirve para asegurar que cada uno de los módulos funcionecorrectamente por separado.
La idea es escribir casos de prueba para cada función no trivial o método en el módulo, de forma que cada caso sea independiente del resto.

**Desarrollo dirigido por pruebas** es una práctica de programación que involucra dos prácticas: escribir las pruebas primero (empleando pruebas unitarias) y refactorizar después (implementando el código necesario). De este modo consigues lograr un código limpio y funcional.

**Rspec** es un framework para el lenguaje ruby basado en desarrollo dirigido por comportamiento, esto es, un método de diseño y codificación que integra pruebas de aceptación y pruebas unitarias definiendo un DSL para pruebas.

Instrucciones
-------------
1. Clona este repositorio para disponer del código:

        $ git clone git@github.com:DavidHerBet/SYTW-pr5-Pruebas.git

2. Instala las gemas correspondientes para que todo funcione correctamente:

        $ bundle install

3. Ejecuta el programa de forma manual o mediante Rake:

        $ rackup
        $ rake rps

4. Necesitarás editar el fichero de host (/etc/hosts) y hacer que localhost apunte a www.example.com:

        # /etc/hosts 
        # Solo hace falta incluirlo al lado de localhost
        127.0.0.1       localhost       www.example.com

5. Abre el navegador y ve al dominio de example en el puerto 9292 para ver la aplicación:

        $ http://www.example.com:9292/

6. Observa mediante las herramientas del navegador la cookie asociada 'rack.session' y como se incrementan los contadores de partida.

7. Comprueba que funcionan los tests unitarios:

        $ rake test

8. Comprueba que funcionan los test TDD con rspec:

        $ rake rspec

Notas
-----
- Esta apliación está realizada en la versión 2.0.0-p247 de ruby, es posible que debas tengas que cambiar la tuya para ejecutar este código o instalarla si no la tienes.

- Puedes observar las distintas tareas especificadas en el Rakefile:

        $ rake -T

---
Universidad de La Laguna
Escuela Técnica Superior de Ingeniería Informática
