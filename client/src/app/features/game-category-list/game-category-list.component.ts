import { Component, EventEmitter, Output } from '@angular/core';
import { GameCategoryService } from '../../common/api/game-category.service'
import { GameCategory } from 'src/app/common/interfaces/game-category';
import { FormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { NgFor } from '@angular/common';
import { MatSelectChange, MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';

@Component({
  selector: 'app-game-category-list',
  templateUrl: './game-category-list.component.html',
  styleUrls: ['./game-category-list.component.scss'],
  standalone: true,
  imports: [MatFormFieldModule, MatSelectModule, NgFor, MatInputModule, FormsModule],
})
export class GameCategoryListComponent {
  gameCategories: GameCategory[] = [];
  selected = -1;

  @Output() newGameCategorySelected = new EventEmitter<number>();

  constructor(
    private gameCategoryService: GameCategoryService
  ) { }

  ngOnInit(): void {
    this.getGameCategories();
  }

  getGameCategories(): void {
    this.gameCategoryService.getList()
      .subscribe(gameCategories => {
        this.gameCategories = gameCategories;
      });
  }

  onGameCategoryChange($event: MatSelectChange) {
    this.newGameCategorySelected.emit($event.value)
  }
}
