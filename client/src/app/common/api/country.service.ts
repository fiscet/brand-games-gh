import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { GlobalConstants } from 'src/app/common/global-constants';
import { Country } from 'src/app/common/interfaces/country';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class CountryService extends ApiService<Country> {
  constructor(http: HttpClient) {
    super(http);

    this.slug = 'countries';
  }
}
