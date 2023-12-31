---
to: src/app/pages/<%= h.changeCase.paramCase(name) %>/<%= h.changeCase.paramCase(name) %>.component.html
unless_exists: true
---
<div class="row flex justify-content-center">
  <div class="col-8">
    <div class="card">
      <div class="content pt-5">
        <div class="mat-elevation-z8">
			<table
				mat-table
				[dataSource]="dataSource"
				matSort
				(matSortChange)="announceSortChange($event)"
			>
				<!-- Position Column -->
				<ng-container matColumnDef="position">
					<th
						mat-header-cell
						*matHeaderCellDef
						sortActionDescription="Sort by symbol"
						mat-sort-header
					>
						No.
					</th>
					<td mat-cell *matCellDef="let element">
						{{ element.position }}
					</td>
				</ng-container>

				<!-- Name Column -->
				<ng-container matColumnDef="name">
					<th
						mat-header-cell
						*matHeaderCellDef
						sortActionDescription="Sort by symbol"
						mat-sort-header
					>
						Name
					</th>
					<td mat-cell *matCellDef="let element">{{ element.name }}</td>
				</ng-container>

				<!-- Weight Column -->
				<ng-container matColumnDef="weight">
					<th
						mat-header-cell
						*matHeaderCellDef
						sortActionDescription="Sort by symbol"
						mat-sort-header
					>
						Weight
					</th>
					<td mat-cell *matCellDef="let element">
						{{ element.weight }}
					</td>
				</ng-container>

				<!-- Symbol Column -->
				<ng-container matColumnDef="symbol">
					<th
						mat-header-cell
						*matHeaderCellDef
						sortActionDescription="Sort by symbol"
						mat-sort-header
					>
						Symbol
					</th>
					<td mat-cell *matCellDef="let element">
						{{ element.symbol }}
					</td>
				</ng-container>

				<!-- Action Column -->
				<ng-container matColumnDef="action">
					<th mat-header-cell *matHeaderCellDef style="width: 10rem">
						<button
							pButton
							pRipple
							type="button"
							icon="pi pi-plus"
							class="p-button-primary"
							label="Create"
							(click)="openFormDialog()"
						></button>
					</th>
					<td mat-cell *matCellDef="let element">
						<button
							pButton
							pRipple
							type="button"
							icon="pi pi-pencil"
							class="p-button-warning m-2"
							(click)="openFormDialog(element)"
						></button>
						<button
							pButton
							pRipple
							type="button"
							icon="pi pi-trash"
							class="p-button-danger m-2"
							(click)="openDeleteDialog(element?.name)"
						></button>
					</td>
				</ng-container>

				<tr
					mat-header-row
					*matHeaderRowDef="displayedColumns"
					sortActionDescription="Sort by symbol"
				></tr>
				<tr mat-row *matRowDef="let row; columns: displayedColumns"></tr>
			</table>
		<mat-paginator
            [pageSizeOptions]="[10, 20, 50]"
            showFirstLastButtons
            aria-label="Select page of periodic elements"
          >
          </mat-paginator>
        </div>
      </div>
    </div>
  </div>
</div>

<form [formGroup]="<%= h.changeCase.paramCase(name) %>Form" (ngSubmit)="submitForm()">
	<p-dialog
		#formDialog
		[(visible)]="isShowFormDialog"
		[style]="{ maxWidth: '80vw' }"
		(onHide)="onHideFormDialog()"
	>
		<ng-template pTemplate="header">
			<ng-container *ngIf="!selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>?.name">
				<label class="title">Create</label>
			</ng-container>
			<ng-container *ngIf="selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>?.name">
				<label class="title">Edit</label>
			</ng-container>
		</ng-template>
		<app-<%= h.changeCase.paramCase(name) %>-form
			[isSubmitted]="isSubmitted"
			[<%= h.changeCase.paramCase(name) %>Form]="<%= h.changeCase.paramCase(name) %>Form"
			[<%= h.changeCase.paramCase(name) %>]="selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>"
		></app-<%= h.changeCase.paramCase(name) %>-form>
		<p-footer>
			<div class="flex justify-content-between">
				<!-- CREATE -->
				<ng-container *ngIf="!selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>?.name">
					<span></span>
					<span>
						<button
							pButton
							label="Cancel"
							type="button"
							icon="fas fa-times"
							class="p-button-secondary p-button-outlined"
							(click)="closeFormDialog()"
						></button>
						<button
							pButton
							label="Save"
							icon="fas fa-save"
							type="submit"
							class="ml-2"
						></button>
					</span>
				</ng-container>

				<!-- EDIT -->
				<ng-container *ngIf="selected<%= h.changeCase.ucFirst(h.changeCase.camel(name)) %>?.name">
					<span></span>
					<span>
						<button
							pButton
							label="Cancel"
							type="button"
							icon="fas fa-times"
							class="p-button-secondary p-button-outlined"
							(click)="formDialog.close($event)"
						></button>
						<button
							pButton
							label="Save"
							icon="fas fa-save"
							type="submit"
							class="ml-2"
						></button>
					</span>
				</ng-container>
			</div>
		</p-footer>
	</p-dialog>
</form>