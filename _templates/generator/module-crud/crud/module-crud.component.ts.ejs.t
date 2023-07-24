---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.component.ts
unless_exists: true
---
import { LiveAnnouncer } from '@angular/cdk/a11y';
import { Component, OnInit, ViewChild } from '@angular/core';
import { FormGroup } from '@angular/forms';
import { MatPaginator } from '@angular/material/paginator';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>FormService } from './<%= h.changeCase.paramCase(name) %>-form/<%= h.changeCase.paramCase(name) %>-form.service';

@Component({
  selector: 'app-<%= h.changeCase.paramCase(name) %>-root',
  templateUrl: '<%= h.changeCase.paramCase(name) %>.component.html',
  styleUrls: ['<%= h.changeCase.paramCase(name) %>.component.scss']
})
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Component implements OnInit {
	title = 'ktb-frontend';
	date = new Date();

	ELEMENT_DATA: any[] = [
		{ position: 1, name: 'Hydrogen', weight: 1.0079, symbol: 'H' },
		{ position: 2, name: 'Helium', weight: 4.0026, symbol: 'He' },
		{ position: 3, name: 'Lithium', weight: 6.941, symbol: 'Li' },
		{ position: 4, name: 'Beryllium', weight: 9.0122, symbol: 'Be' },
		{ position: 5, name: 'Boron', weight: 10.811, symbol: 'B' },
		{ position: 6, name: 'Carbon', weight: 12.0107, symbol: 'C' },
		{ position: 7, name: 'Nitrogen', weight: 14.0067, symbol: 'N' },
		{ position: 8, name: 'Oxygen', weight: 15.9994, symbol: 'O' },
		{ position: 9, name: 'Fluorine', weight: 18.9984, symbol: 'F' },
		{ position: 10, name: 'Neon', weight: 20.1797, symbol: 'Ne' },
		{ position: 11, name: 'Sodium', weight: 22.9897, symbol: 'Na' },
		{ position: 12, name: 'Magnesium', weight: 24.305, symbol: 'Mg' },
		{ position: 13, name: 'Aluminum', weight: 26.9815, symbol: 'Al' },
		{ position: 14, name: 'Silicon', weight: 28.0855, symbol: 'Si' },
		{ position: 15, name: 'Phosphorus', weight: 30.9738, symbol: 'P' },
		{ position: 16, name: 'Sulfur', weight: 32.065, symbol: 'S' },
		{ position: 17, name: 'Chlorine', weight: 35.453, symbol: 'Cl' },
		{ position: 18, name: 'Argon', weight: 39.948, symbol: 'Ar' },
		{ position: 19, name: 'Potassium', weight: 39.0983, symbol: 'K' },
		{ position: 20, name: 'Calcium', weight: 40.078, symbol: 'Ca' },
	];

	displayedColumns: string[] = [
		'position',
		'name',
		'weight',
		'symbol',
		'action',
	];
	dataSource = new MatTableDataSource<any>(this.ELEMENT_DATA);

	@ViewChild(MatPaginator) paginator!: MatPaginator;
	@ViewChild(MatSort) sort!: MatSort;

	isLoading: boolean = true;
	isShowDeleteConfirmDialog: boolean = false;
	isShowResponsiveFilter: boolean = false;
	isShowFormDialog: boolean = false;
	isSubmitted: boolean = false;
	selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>?: any;
	<%= h.changeCase.paramCase(name) %>Form!: FormGroup;

  constructor(
		private _liveAnnouncer: LiveAnnouncer,
		private <%= h.changeCase.paramCase(name) %>FormService: <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>FormService
	) {
		this.<%= h.changeCase.paramCase(name) %>Form = this.<%= h.changeCase.paramCase(name) %>FormService.toFormGroup();
	}

	ngOnInit(): void {
		/*
    this.toastrService.success(this.alertMessages["A001"]);
    this.toastrService.error(this.errorMessages["E001"]);
    this.toastrService.warning(
      "Toastr fun! Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!Toastr fun!",
      "Warning!"
    );
    */
	}

	ngAfterViewInit() {
		this.dataSource.paginator = this.paginator;
		this.dataSource.sort = this.sort;
	}

	announceSortChange(sortState: any) {
		console.log(sortState);
		if (sortState.direction) {
			this._liveAnnouncer.announce(`Sorted ${sortState.direction}ending`);
		} else {
			this._liveAnnouncer.announce('Sorting cleared');
		}
	}

	openDialogOneButton() {
		// this.dialogService.showOneButtonDialog(
		//	'บันทึกข้อมูล',
		//	'การบันทึกข้อมูลสำเร็จ',
		//	'ตกลง',
		//	'small'
		// );
	}

	openDialogTwoButton() {
		// this.dialogService.showTwoButtonDialog(
		// 	'ออกจากระบบ',
		//	'ยืนยันการออกจากระบบ',
		//	'ตกลง',
		//	'ยกเลิก',
		//	'medium'
		// );
	}

	openFormDialog(data?: any) {
		if (data?.name) {
			// Update
			this.selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %> = data;
			this.<%= h.changeCase.paramCase(name) %>Form.patchValue(data);
			this.isShowFormDialog = true;
		} else {
			// Create
			this.isShowFormDialog = true;
		}
	}

	closeFormDialog() {
		this.isShowFormDialog = false;
		this.isSubmitted = false;
		this.clearFormDialogValue();
	}

	openLoading() {
		// this.loadingService.showLoading();
		// setTimeout(() => {
		//   this.loadingService.hideLoading();
		// }, 2000);

		// this.authService.login({ username: '', password: '' });
	}

	submitForm() {
		this.isSubmitted = true;
		if (this.<%= h.changeCase.paramCase(name) %>Form.invalid) {
			console.log('Invalid form: ', this.<%= h.changeCase.paramCase(name) %>Form);
			return;
		}
		console.log('Form value: ', this.<%= h.changeCase.paramCase(name) %>Form.value);
		if (this.selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>?.name) {
			this.updateData(this.<%= h.changeCase.paramCase(name) %>Form.value);
		} else {
			this.createData();
		}
	}

	onHideFormDialog() {
		this.isShowFormDialog = false;
		this.isSubmitted = false;
		this.clearFormDialogValue();
	}

	openDeleteDialog(name: string) {
		this.isShowDeleteConfirmDialog = true;
		// this.dialogService.showTwoButtonDialog(
		//	'Delete',
		//	`ยืนยันการลบ '${name}' ?`,
		//	'ตกลง',
		//	'ยกเลิก',
		//	'medium'
		// );
		// TODO: Call service delete
		// ...
	}

	closeDeleteDialog() {
		this.isShowDeleteConfirmDialog = false;
	}

	private createData() {
		// TODO: Call service create
		// ...
		this.onHideFormDialog();
	}

	private updateData(selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>: any) {
		// TODO: Call service update
		// ...
		this.onHideFormDialog();
	}

	private clearFormDialogValue() {
		this.selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %> = undefined;
		this.isSubmitted = false;
		//reset form value
		this.<%= h.changeCase.paramCase(name) %>Form = this.<%= h.changeCase.paramCase(name) %>FormService.toFormGroup();
	}
}
