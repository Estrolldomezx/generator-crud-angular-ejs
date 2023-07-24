---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.component.scss
unless_exists: true
---
.content-box {
    position: relative;
    background: white;
    box-sizing: border-box;
    box-shadow: 0px 1px 5px darkgray;
    border-radius: 5px;
    margin: 2rem 2rem;
    .content-box-title {
      font-size: 18px;
      color: blue;
      padding: 20px 20px 5px;
      margin: 0px 25px;
      border-bottom: 1px solid lightgray;
    }
    .content-box-body {
      padding: 25px 45px;
    }
}