

import { Controller } from '@hotwired/stimulus';
import Swiper from 'swiper/swiper-bundle';


export default class extends Controller {
    connect() {
      console.log("jemimah");
      this.swiper = new Swiper('.swiper-container', {
        pagination: {
          el: ".swiper-pagination",
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },

      });
        
         
      
    }

  }

