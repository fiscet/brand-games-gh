import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, of } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { Game } from 'src/app/common/interfaces/game';
import { ApiService } from './api.service';
import { GlobalConstants } from '../global-constants';

@Injectable({
  providedIn: 'root'
})
export class GameService extends ApiService<Game> {

  constructor(http: HttpClient) {
    super(http);

    this.slug = 'brand-games';
  }

  override getList(): Observable<Game[]> {
    return of([])
  }

  getGames(brandId: number, countryIso: string, categoryId?: number): Observable<Game[]> {
    if (!brandId || !countryIso) {
      return of([])
    }

    const url = `${GlobalConstants.apiEndpoint}/${this.slug}/${brandId}/${countryIso}${categoryId && categoryId > 0 ? `/${categoryId}` : ''}`;

    return this.http.get<Game[]>(url)
      .pipe(
        catchError(this.handleError<Game[]>('getGames', []))
      );
  }
}
