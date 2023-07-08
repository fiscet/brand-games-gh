import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { GameListComponent } from './features/game-list/game-list.component';
import { GameCardComponent } from './components/game-card/game-card.component';
import { BrandListComponent } from './features/brand-list/brand-list.component';
import { CountryListComponent } from "./features/country-list/country-list.component";
import { GameCategoryListComponent } from "./features/game-category-list/game-category-list.component";

@NgModule({
    declarations: [
        AppComponent,
        GameListComponent
    ],
    providers: [],
    bootstrap: [AppComponent],
    imports: [
        BrowserModule,
        BrowserAnimationsModule,
        HttpClientModule,
        BrandListComponent,
        CountryListComponent,
        GameCategoryListComponent,
        GameCardComponent
    ]
})
export class AppModule { }
