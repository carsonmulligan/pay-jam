// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "prices" ]

  connect() {
    let total_price = 0;

    this.pricesTargets.forEach((price) => {
      total_price += parseFloat(price.innerText);
    });
    document.getElementById("price-total").innerText = total_price;
  }
}
