---
to: src/app/models/<%= h.changeCase.paramCase(name) %>.model.ts
unless_exists: true
---
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %> {
    id?: string
    name?: string

    constructor(<%= h.changeCase.paramCase(name) %>?: Partial<any>) { // change any to other class
        Object.assign(this, <%= h.changeCase.paramCase(name) %>);
    }
}
