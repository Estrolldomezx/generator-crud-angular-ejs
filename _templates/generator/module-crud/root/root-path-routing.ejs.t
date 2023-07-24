---
inject: true
to: src/app/app-routing.module.ts
after: components
---
    {
        path: '<%= h.changeCase.paramCase(name) %>',
        component: <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Component
    },