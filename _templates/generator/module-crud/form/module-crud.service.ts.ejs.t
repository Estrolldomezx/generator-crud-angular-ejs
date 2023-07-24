---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>-form/<%= h.changeCase.paramCase(name) %>-form.service.ts
unless_exists: true
---
import { Injectable } from '@angular/core';
import { FormBuilder, Validators } from '@angular/forms';

@Injectable({
  providedIn: 'root',
})
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>FormService {
  constructor(private fb: FormBuilder) {}

  toFormGroup() {
    return this.fb.group({
      // example formGroup
      position: [null],
      name: [null, Validators.required],
      weight: [null, [Validators.required, Validators.min(0)]],
      symbol: [null],
      radio: [null, Validators.required],
			checkBox: [null, Validators.required],
			dropdown: [null, Validators.required],
			datePicker: [null, Validators.required],
    });
  }
}