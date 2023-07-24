---
inject: true
to: src/app/app.module.ts
after: here
skip_if: h.changeCase.ucFirst(h.changeCase.camel(name)) %>Module
---
<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Module,