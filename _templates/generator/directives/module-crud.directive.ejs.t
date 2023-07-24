---
to: src/app/shared/directives/<%= h.changeCase.paramCase(name) %>.directive.ts
unless_exists: true
---
import {
	AfterViewInit,
	Directive,
	ElementRef,
	HostListener,
	Input,
	OnDestroy,
	OnInit,
	Optional,
	Renderer2,
} from '@angular/core';
import { NgModel } from '@angular/forms';
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

@Directive({
	selector: '[app<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>]',
})
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Directive
	implements OnInit, AfterViewInit, OnDestroy
{
	@Input() app<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>: any;
	private div!: HTMLDivElement;
	private destroyed$ = new Subject();

	constructor(
		private el: ElementRef,
		private renderer: Renderer2,
		@Optional() private ngModel: NgModel
	) {}

	@HostListener('input', ['$event']) onChange(event: any) {
		if (!this.ngModel) {
		}
	}

	ngOnInit() {
		if (this.ngModel) {
			this.ngModel?.valueChanges?.pipe(takeUntil(this.destroyed$)).subscribe((value) => {});
		}
	}

	ngAfterViewInit() {
		// TODO: do something
		this.renderer.insertBefore(
			this.el.nativeElement.parentNode,
			this.div,
			this.el.nativeElement.nextSibling
		);
	}

	ngOnDestroy() {
		// this.destroyed$.next();
		this.destroyed$.complete();
		if (this.div) {
			this.div.remove();
		}
	}
}
