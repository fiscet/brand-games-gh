import { Component, EventEmitter, Output } from '@angular/core';
import { BrandService } from '../../common/api/brand.service'
import { Brand } from 'src/app/common/interfaces/brand';
import { FormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { NgFor } from '@angular/common';
import { MatSelectChange, MatSelectModule } from '@angular/material/select';
import { MatFormFieldModule } from '@angular/material/form-field';

@Component({
  selector: 'app-brand-list',
  templateUrl: './brand-list.component.html',
  styleUrls: ['./brand-list.component.scss'],
  standalone: true,
  imports: [MatFormFieldModule, MatSelectModule, NgFor, MatInputModule, FormsModule],
})
export class BrandListComponent {
  brands: Brand[] = [];
  selected = 0;

  @Output() newBrandSelected = new EventEmitter<number>();

  constructor(
    private brandService: BrandService
  ) { }

  ngOnInit(): void {
    this.getBrands();
  }

  getBrands(): void {
    this.brandService.getList()
      .subscribe(brands => {
        this.brands = brands;
        this.selected = brands[0].id;
        this.newBrandSelected.emit(this.selected)
      });
  }

  onBrandChange($event: MatSelectChange) {
    this.newBrandSelected.emit($event.value)
  }
}
