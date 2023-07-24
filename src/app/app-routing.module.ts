import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { AppLayoutComponent } from './pages/app-layout/app-layout.component';
import { DomeComponent } from './pages/dome/dome.component';
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
    {
        path: 'dome',
        component: DomeComponent
    },
    ],
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
