import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { AppLayoutComponent } from './pages/app-layout/app-layout.component';
// Add new imports

const routes: Routes = [
  {
    path: '',
    component: AppLayoutComponent,
    canActivate: [],
    children: [
      {
        path: 'app',
        component: AppComponent,
      },
      // Add new components here
    ],
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
