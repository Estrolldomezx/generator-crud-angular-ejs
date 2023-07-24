---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.module.ts
unless_exists: true
---
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatNativeDateModule } from '@angular/material/core';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatDialogModule } from '@angular/material/dialog';
import { MatInputModule } from '@angular/material/input';
import { MatListModule } from '@angular/material/list';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatSelectModule } from '@angular/material/select';
import { MatSortModule } from '@angular/material/sort';
import { MatTableModule } from '@angular/material/table';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { RouterModule } from '@angular/router';
import { ButtonModule } from 'primeng/button';
import { CalendarModule } from 'primeng/calendar';
import { CheckboxModule } from 'primeng/checkbox';
import { ConfirmDialogModule } from 'primeng/confirmdialog';
import { ContextMenuModule } from 'primeng/contextmenu';
import { DialogModule } from 'primeng/dialog';
import { DropdownModule } from 'primeng/dropdown';
import { FileUploadModule } from 'primeng/fileupload';
import { InputNumberModule } from 'primeng/inputnumber';
import { InputTextModule } from 'primeng/inputtext';
import { InputTextareaModule } from 'primeng/inputtextarea';
import { MultiSelectModule } from 'primeng/multiselect';
import { ProgressBarModule } from 'primeng/progressbar';
import { RadioButtonModule } from 'primeng/radiobutton';
import { RatingModule } from 'primeng/rating';
import { SliderModule } from 'primeng/slider';
import { ToastModule } from 'primeng/toast';
import { ToolbarModule } from 'primeng/toolbar';
import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Component } from './<%= h.changeCase.paramCase(name) %>.component';
import { <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>FormComponent } from './<%= h.changeCase.paramCase(name) %>-form/<%= h.changeCase.paramCase(name) %>-form.component';

@NgModule({
  declarations: [
    <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Component,
    <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>FormComponent
  ],
  imports: [
    CommonModule,
    RouterModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    MatCheckboxModule,
    MatButtonModule,
    MatTableModule,
    MatPaginatorModule,
    MatSortModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatDialogModule,
    MatProgressSpinnerModule,
    MatInputModule,
    MatListModule,
    MatSelectModule,
    ToastrModule.forRoot(),
    ButtonModule,
		CalendarModule,
		SliderModule,
		DialogModule,
		MultiSelectModule,
		ContextMenuModule,
		DropdownModule,
		InputTextModule,
		ProgressBarModule,
		FileUploadModule,
		ToolbarModule,
		RatingModule,
		RadioButtonModule,
		InputNumberModule,
		ConfirmDialogModule,
		InputTextareaModule,
		CheckboxModule,
  ],
  exports:[
    <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Component
  ]
})
export class <%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>Module { }