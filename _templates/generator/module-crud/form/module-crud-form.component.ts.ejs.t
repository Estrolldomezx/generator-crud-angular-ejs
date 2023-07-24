---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>-form/<%= h.changeCase.paramCase(name) %>-form.component.ts
unless_exists: true
---
import { Component, Input, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';

@Component({
	selector: 'app-<%= h.changeCase.paramCase(name) %>-form',
	templateUrl: './<%= h.changeCase.paramCase(name) %>-form.component.html',
	styleUrls: ['./<%= h.changeCase.paramCase(name) %>-form.component.scss'],
})
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>FormComponent implements OnInit {
	@Input() isLoading?: boolean = false;
	@Input() isSubmitted!: boolean;
	@Input() <%= h.changeCase.paramCase(name) %>?: any;
	@Input() <%= h.changeCase.paramCase(name) %>Form!: FormGroup;

	categories: any[] = [
        { name: 'test 1', key: 'A' },
        { name: 'test 2', key: 'B' },
    ];

	constructor() {}

	ngOnInit(): void {}

	get f() {
		return this.<%= h.changeCase.paramCase(name) %>Form.controls;
	}
}