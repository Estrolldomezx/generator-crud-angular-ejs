---
to: src/app/shared/pipes/<%= h.changeCase.paramCase(name) %>.pipe.ts
unless_exists: true
---
import { Pipe, PipeTransform } from "@angular/core";
import { DatePipe } from "@angular/common";

@Pipe({
  name: "<%= h.changeCase.paramCase(name) %>Pipe",
})
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Pipe implements PipeTransform {
  // transform(value: any) {
  //  if (value) {
  //    return "";
  //  } else {
  //    return "";
  //  }
  // }
}