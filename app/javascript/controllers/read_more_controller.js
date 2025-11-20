import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["para1", "button"]
  
  open(){

    this.para1Target.classList.toggle("hidden")

    // const p =  document.createElement("p")
    // p.textContent = "We are the best proffesional nail tech services"
    this.para1Target.textContent = "Our team of skilled nail technicians has been perfecting their craft for over [X] years, staying up to date with the latest trends and techniques in nail care and design. Whether you love classic styles, intricate nail art, or the latest seasonal trends, we provide personalized service tailored to your taste. We pride ourselves on using high-quality products and maintaining a hygienic, relaxing environment for every client."

    if(this.para1Target.classList.contains("hidden")){
        this.buttonTarget.textContent = "READ MORE"
    }else
        this.buttonTarget.textContent = "READ LESS"

  }
}