import { Component, Input, OnInit } from '@angular/core';
import { FormGroup } from '@angular/forms';

@Component({
	selector: 'app-dome-form',
	templateUrl: './dome-form.component.html',
	styleUrls: ['./dome-form.component.scss'],
})
export class DomeFormComponent implements OnInit {
	@Input() isLoading?: boolean = false;
	@Input() isSubmitted!: boolean;
	@Input() dome?: any;
	@Input() domeForm!: FormGroup;

	categories: any[] = [
        { name: 'test 1', key: 'A' },
        { name: 'test 2', key: 'B' },
    ];

	constructor() {}

	ngOnInit(): void {}

	get f() {
		return this.domeForm.controls;
	}
}