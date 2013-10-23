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
- Clona este repositorio para disponer del código:

        $ git clone git@github.com:DavidHerBet/SYTW-pr5-Pruebas.git

- Ten en cuenta la versión de ruby empleada, es posible que debas cambiar la tuya para ejecutar este código o instalarla si no la tienes.

- También es posible que tengas que instalar las gemas correspondientes:

        $ bundle install

- Puedes observar las tareas especificadas en el Rakefile:

        $ rake -T
 
- Se ejecuta el programa de forma manual o mediante Rake:

        $ rackup
        $ rake rps

- Vamos al dominio de example en el puerto 9292:

        $ http://www.example.com:9292/

- Observamos mediante las herramientas del navegador la cookie asociada 'rack.session' y como se incrementan los contadores de partida.

- Para comprobar que funcionan los tests unitarios:

        $ rake test

- Para comprobar que funcionan los test del tdd con rspec

        $ rake rspec

---

Universidad de La Laguna  
Escuela Técnica Superior de Ingeniería Informática

