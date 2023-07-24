# Generator CRUD angular-ejs

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)
Generator is a part of Hygen library, for reuse components.
- Documentatiom : http://www.hygen.io

## Features

- Export a Component of angular includes HTML, SCSS, Typescript.
- Export other features ex. directive, pipe, model and validator.
- Add or remove templates for generator.
- Configuration styles of component themes.

## Generates
First step globally with `npm` (or `yarn`):
```sh
npm i -g hygen
hygen init self
```

> Note: `generator` is required `<name>`.

module-crud:

```sh
hygen generator module-crud <name>
```

directive:

```sh
hygen generator directives <name>
```

pipe:

```sh
hygen generator pipes <name>
```

model:

```sh
hygen generator models <name>
```

validator:

```sh
hygen generator validators <name>
```

## Tech

uses a number of open source projects to work properly:

- [AngularJS] - TypeScript-based single-page web application framework.
- [PrimeNg] - UI framework for angular.
- [Bootstrap] - Awesome CSS framework.
- [Material-UI] - Mateial UI design framework.
- [PrimeFlex] - Lightweight responsive CSS utility library. 


   [PrimeNg]: <https://www.primeng.org>
   [Bootstrap]: <https://www.getbootstrap.com>
   [Material-UI]: <https://material.angular.io/>
   [PrimeFlex]: <https://www.primefaces.org/primeflex/>
   [AngularJS]: <http://angularjs.org>
> Enjoy
