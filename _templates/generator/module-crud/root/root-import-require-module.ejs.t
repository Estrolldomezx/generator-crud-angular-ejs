---
inject: true
to: src/app/app.module.ts
before: //COMPONENT//
skip_if: import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Module } from './<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.module';
---
import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Module } from './pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.module';