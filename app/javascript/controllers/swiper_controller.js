import { Controller } from '@hotwired/stimulus'
// import Swiper from 'swiper'


export default class extends Controller {
  connect() {
    console.log("jemimah")
    this.swiper = new Swiper('.swiper', {
      loop: true,
      slidesPerView: 1,
      spaceBetween: 10,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      autoplay: {
        delay: 3000,
        disableOnInteraction: false,
      },
    });
  }
}
