import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable, catchError, of } from 'rxjs';
import { GlobalConstants } from '../global-constants';

@Injectable({
    providedIn: 'root'
})
export class ApiService<T> {
    protected slug!: string;

    constructor(
        protected http: HttpClient,
    ) { }

    getList(): Observable<T[]> {
        const url = `${GlobalConstants.apiEndpoint}/${this.slug}`;
        return this.http.get<T[]>(url)
            .pipe(
                catchError(this.handleError<T[]>(url, []))
            );
    }

    protected handleError<T>(operation = 'operation', result?: T) {
        return (error: any): Observable<T> => {
            console.error(operation, error);
            return of(result as T);
        };
    }
}
