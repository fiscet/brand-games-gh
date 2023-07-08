import { CommonModule } from '@angular/common';
import { Component, Input } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatTooltipModule } from '@angular/material/tooltip';
import { GlobalConstants } from 'src/app/common/global-constants';

@Component({
  selector: 'app-game-card',
  templateUrl: './game-card.component.html',
  styleUrls: ['./game-card.component.scss'],
  standalone: true,
  imports: [CommonModule, MatCardModule, MatTooltipModule],
})
export class GameCardComponent {
  imageUrl: string = '';

  @Input() launchcode: number = 0;
  @Input() game_name: string = '';
  @Input() rtp: number = 0;
  @Input() game_provider: string = '';
  @Input() game_category: string = '';
  @Input() brand: string = '';
  @Input() hot: boolean = false;
  @Input() new: boolean = false;

  ngOnInit(): void {
    this.checkImage()
  }


  checkIfImageExists(url: string, callback: (exists: boolean) => void) {
    const img = new Image();
    img.src = url;

    if (img.complete) {
      callback(true);
    } else {
      img.onload = () => {
        callback(true);
      };

      img.onerror = () => {
        callback(false);
      };
    }
  }

  checkImage(): void {
    const remoteUrl = `${GlobalConstants.gameImageUrl}/${this.launchcode}.jpg`;

    this.checkIfImageExists(remoteUrl, (exists) => {
      if (exists) {
        this.imageUrl = remoteUrl
      } else {
        this.imageUrl = 'assets/game_placeholder.png'
      }
    });
  }

  showCode(): void {
    alert(`My code is ${this.launchcode}`)
  }
}
