import { Component, EventEmitter, Output } from '@angular/core';
import { CountryService } from '../../common/api/country.service'
import { Country } from 'src/app/common/interfaces/country';
import { FormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { NgFor } from '@angular/common';
import { MatSelectChange, MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';

@Component({
  selector: 'app-country-list',
  templateUrl: './country-list.component.html',
  styleUrls: ['./country-list.component.scss'],
  standalone: true,
  imports: [MatFormFieldModule, MatSelectModule, NgFor, MatInputModule, FormsModule],
})
export class CountryListComponent {
  countries: Country[] = [];
  selected = '';

  @Output() newCountrySelected = new EventEmitter<string>();

  constructor(
    private countryService: CountryService
  ) { }

  ngOnInit(): void {
    this.getCountries();
  }

  getCountries(): void {
    this.countryService.getList()
      .subscribe(countries => {
        this.countries = countries;
        this.selected = countries[0].iso;
        this.newCountrySelected.emit(this.selected)
      });
  }

  onCountryChange($event: MatSelectChange) {
    this.newCountrySelected.emit($event.value)
  }
}
