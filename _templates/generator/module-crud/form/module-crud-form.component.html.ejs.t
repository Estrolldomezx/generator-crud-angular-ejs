---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>-form/<%= h.changeCase.paramCase(name) %>-form.component.html
unless_exists: true
---
<form [formGroup]="<%= h.changeCase.paramCase(name) %>Form" *ngIf="!isLoading">
	<div class="grid">
		<div class="col-12 sm:col-12 md:col-12 lg:col-12 xl:col-12">
			<div class="grid formgrid p-fluid">
				<div class="field col-12 sm:col-12 md:col-6 lg:col-6 xl:col-6">
					<label for=""> inputText *</label>
					<input
						pInputText
						id="name"
						type="text"
						formControlName="name"
						[ngClass]="
							<%= h.changeCase.paramCase(name) %>Form.controls['name'].invalid && isSubmitted
								? 'form-control ng-invalid ng-touched'
								: 'form-control'
						"
					/>
					<small
						*ngIf="<%= h.changeCase.paramCase(name) %>Form.controls['name'].invalid && isSubmitted"
						id="name-help"
						class="p-error block"
						>Please fill name.</small
					>
				</div>
				<div class="field col-12 sm:col-12 md:col-6 lg:col-6 xl:col-6">
					<label for="" required> inputNumber *</label>
					<p-inputNumber
						inputId="weight"
						formControlName="weight"
						[min]="0"
						[ngClass]="
							<%= h.changeCase.paramCase(name) %>Form.controls['weight'].invalid && isSubmitted
								? 'ng-invalid ng-dirty'
								: ''
						"
					></p-inputNumber>
					<small
						*ngIf="<%= h.changeCase.paramCase(name) %>Form.controls['weight'].invalid && isSubmitted"
						id="name-help"
						class="p-error block"
						>Please fill weight.</small
					>
				</div>
				<div class="field col-12 sm:col-12 md:col-12 lg:col-6 xl:col-6">
					<label for=""> textarea </label>
					<textarea
						pInputTextarea
						id="symbol"
						class="w-full"
						pInputText
						rows="5"
						cols="30"
						formControlName="symbol"
					></textarea>
				</div>
				<div class="field col-12 sm:col-12 md:col-12 lg:col-3 xl:col-3">
					<label for=""> radioButton </label>
					<div *ngFor="let category of categories" class="field-checkbox">
						<p-radioButton
							[value]="category"
							[ngClass]="
								<%= h.changeCase.paramCase(name) %>Form.controls['radio'].invalid && isSubmitted
									? 'ng-invalid ng-dirty'
									: ''
							"
							formControlName="radio"
						></p-radioButton>
						<label [for]="category.key" class="ml-2">{{ category.name }}</label>
					</div>
				</div>
				<div class="field col-12 sm:col-12 md:col-12 lg:col-3 xl:col-3">
					<label for=""> checkBox </label>
					<div *ngFor="let category of categories" class="field-checkbox">
						<p-checkbox
							name="group"
							[value]="category"
							[ngClass]="
								<%= h.changeCase.paramCase(name) %>Form.controls['checkBox'].invalid && isSubmitted
									? 'ng-invalid ng-dirty'
									: ''
							"
							formControlName="checkBox"
						></p-checkbox>
						<label [for]="category.key">{{ category.name }}</label>
					</div>
				</div>
				<div class="field col-12 sm:col-12 md:col-12 lg:col-6 xl:col-6">
					<label for=""> dropdown </label>
					<p-dropdown
						[options]="categories"
						optionLabel="name"
						appendTo="body"
						[ngClass]="
							<%= h.changeCase.paramCase(name) %>Form.controls['dropdown'].invalid && isSubmitted
								? 'ng-invalid ng-dirty'
								: ''
						"
						formControlName="dropdown"
					></p-dropdown>
					<small
						*ngIf="<%= h.changeCase.paramCase(name) %>Form.controls['dropdown'].invalid && isSubmitted"
						id="dropdown-help"
						class="p-error block"
						>Please select dropdown.</small
					>
				</div>
				<div class="field col-12 sm:col-12 md:col-12 lg:col-6 xl:col-6">
					<label for=""> datePicker </label>
					<p-calendar
						[showIcon]="true"
						dateFormat="dd/mm/yy"
						appendTo="body"
						[ngClass]="
							<%= h.changeCase.paramCase(name) %>Form.controls['datePicker'].invalid && isSubmitted
								? 'ng-invalid ng-dirty'
								: ''
						"
						formControlName="datePicker"
						placeholder="29/03/2023"
					></p-calendar>
					<small
						*ngIf="<%= h.changeCase.paramCase(name) %>Form.controls['datePicker'].invalid && isSubmitted"
						id="datePicker-help"
						class="p-error block"
						>Please select date.</small
					>
				</div>
			</div>
		</div>
	</div>
</form>
