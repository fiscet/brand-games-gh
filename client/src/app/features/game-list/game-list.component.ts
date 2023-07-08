import { Component, Input } from '@angular/core';
import { GameService } from '../../common/api/game.service'
import { Game } from 'src/app/common/interfaces/game';

@Component({
  selector: 'app-game-list',
  templateUrl: './game-list.component.html',
  styleUrls: ['./game-list.component.scss']
})
export class GameListComponent {

  @Input() brandId!: number;
  @Input() countryIso!: string;
  @Input() categoryId?: number;

  games: Game[] = [];

  constructor(
    private gameService: GameService
  ) { }

  ngOnInit(): void {
    this.getGames();
  }

  ngOnChanges() {
    this.getGames();
  }

  getGames(): void {
    this.gameService.getGames(this.brandId, this.countryIso, this.categoryId)
      .subscribe(games => this.games = games);
  }

}
