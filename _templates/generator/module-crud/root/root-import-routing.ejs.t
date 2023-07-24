---
inject: true
to: src/app/app-routing.module.ts
before: imports
skip_if: import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Module } from './<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.component';
---
import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Component } from './pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.component';