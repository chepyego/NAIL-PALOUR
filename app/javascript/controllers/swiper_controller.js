

import { Controller } from '@hotwired/stimulus';
import Swiper from "swiper"

// import Swiper from 'swiper/swiper-bundle';


export default class extends Controller {
    connect() {
      console.log("jemimah");
      this.swiper = new Swiper('.swiper-container', {
        // loop: true, // Infinite loop
        // autoplay: {
        //   delay: 2500, // Slide change interval (in milliseconds)
        //   disableOnInteraction: false, // Keep autoplay running after user interaction
        // },
        slidesPerView: 1, // Number of slides visible at once
        spaceBetween: 10, // Space between slides
        pagination: {
          el: '.swiper-pagination',
          clickable: true,
        },
        pagination: {
          el: ".swiper-pagination",
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        continuous: true, // Make the carousel loop continuously


      });
        
         
      
    }

  }

