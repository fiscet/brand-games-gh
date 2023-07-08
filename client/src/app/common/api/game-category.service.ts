import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { GameCategory } from 'src/app/common/interfaces/game-category';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class GameCategoryService extends ApiService<GameCategory>{
 

  constructor(http: HttpClient) {
    super(http);

    this.slug = 'game-categories';
  }
}
