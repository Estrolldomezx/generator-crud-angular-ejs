//MODULE//
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';

//COMPONENT//
import { AppComponent } from './app.component';
import { AppLayoutComponent } from './pages/app-layout/app-layout.component';
//DIRECTIVE//

@NgModule({
  declarations: [
    AppComponent,
    AppLayoutComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
		// Add new module here

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
