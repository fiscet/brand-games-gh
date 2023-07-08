import { Component } from '@angular/core';
import { GlobalConstants } from './common/global-constants';
import { ConstantPool } from '@angular/compiler';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = GlobalConstants.appTitle;
  brandId: number = -1;
  countryIso: string = '';
  categoryId?: number = -1;

  setBrandId(value: number) {
    this.brandId = value
  }

  setCountryIso(value: string) {
    this.countryIso = value
  }

  setCategoryId(value: number) {
    this.categoryId = value 
  }
}
