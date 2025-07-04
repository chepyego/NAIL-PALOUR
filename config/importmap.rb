# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
pin "swiper", to: "https://ga.jspm.io/npm:swiper@11.2.6/swiper-bundle.esm.js"
pin "stimulus-use" # @0.52.3
pin "flatpickr" # @4.6.13
pin "stimulus-flatpickr" # @3.0.0
