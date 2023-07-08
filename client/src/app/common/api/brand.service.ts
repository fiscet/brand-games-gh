import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Brand } from 'src/app/common/interfaces/brand';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class BrandService extends ApiService<Brand>{
 

  constructor(http: HttpClient) {
    super(http);

    this.slug = 'brands';
  }
}
