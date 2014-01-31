## Description

Reimplementation of Play Framework sample application [Computer Database](https://github.com/playframework/playframework/tree/master/samples/scala/computer-database)
as SPA (Single Page Application) trying to be as much **A**synchronous as possible, using **A**kka, and **A**ngular.dart.

## How to run

```shell
git clone https://github.com/daydev/compdb_aaa.git
cd compdb
play run
```
Open [Dartium](https://www.dartlang.org/tools/dartium/) and go to http//localhost:9000.

If you want to run compiled-to-js version, before `play run` additionaly do
```
cd client/web
dart2js -m -o main.dart.js main.dart
```
At the time compiled version seems to be working only in Chrome.

## Featuring

### Server-side (Scala, Play Framework, Akka, Slick):

- Generic DAOs and CRUD controllers;
- Accepting and serving JSON;
- Database access through Akka actors (proof-of-concept);
- Specs2 PlayFramework and Akka testing;

### Frontend (Dart, angular.dart):

- Cornerstone angular directives: ng-model, ng-repeat, ng-click, ng-if, etc.;
- Routing;
- Creating angular.dart components;
- Angular DI including separation of the application into submodules;
- Angular http service and Futures;
- Serialization/deserialization with [Morph](https://github.com/Dreckr/Morph);
- Using angular built in filters and creating your own (see also: [angular_pagination](https://github.com/daydev/angular_pagination));
- Augmenting angular ng-model directive (see: [angular_convert](https://github.com/daydev/angular_convert.git));
- Testing angular.dart components and directives with (almost) standard Dart unittest capabilities;
- Running Dart tests with Karma;

## Things to maybe do

- Integrate Travis-CI (including Karma for frontend tests)
and [new scala code coverage tool](https://github.com/scoverage/scalac-scoverage-plugin);
- Write explanatory comments throughout the code;
- Investigate possibility of making compiled-to-js frontend work in Firefox and not only Chrome;
- Implement proper validation and error handling;
- Add proper `MirrorsUsed` annotation(s);
- Create stand-alone version of frontend using browser local storage;
- Configure separate thread pool for database actors;
- Create tests for frontend views and services.
- Integrate [postgresql-async](https://github.com/mauricio/postgresql-async)

## References

Sources of information/inspiration, excluding obvious ones (official documentation, etc.):

- [Discussion about accessing database through Akka actors](https://groups.google.com/d/msg/akka-user/_t1ER27Df78/agxSpdtg2IsJ);
- [angular.dart sample app](https://github.com/vsavkin/angulardart-sample-app);
- [angular.dart tutorial](https://github.com/angular/angular.dart.tutorial);
- [Testing angular.dart with semi-standard Dart unittests](http://japhr.blogspot.com/2013/10/beautiful-acceptance-tests-in.html)