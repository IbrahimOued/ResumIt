import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { SummarizeComponent } from './pages/summarize/summarize.component';

const routes: Routes = [
  {
    path: '',
    component: SummarizeComponent,
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
