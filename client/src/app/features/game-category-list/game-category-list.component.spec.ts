import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GameCategoryListComponent } from './game-category-list.component';

describe('GameCategoryListComponent', () => {
  let component: GameCategoryListComponent;
  let fixture: ComponentFixture<GameCategoryListComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [GameCategoryListComponent]
    });
    fixture = TestBed.createComponent(GameCategoryListComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
