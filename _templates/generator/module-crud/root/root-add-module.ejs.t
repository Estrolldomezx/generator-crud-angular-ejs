---
inject: true
to: src/app/pages/app-layout/app-layout.component.html
after: here
skip_if: <%= h.changeCase.paramCase(name) %>
---
    <li class="nav-item">
        <a routerLink="<%= h.changeCase.paramCase(name) %>" [ngClass]="true ? 'success' : 'danger'"
          ><%= h.changeCase.ucFirst(h.changeCase.camel(name)) %></a
        >
    </li>