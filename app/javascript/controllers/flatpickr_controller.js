import Flatpickr from "stimulus-flatpickr"
// import "flatpickr/dist/flatpickr.css"

export default class extends Flatpickr {
  // Optional: override config or add custom behavior here
  connect() {
    this.config = {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      altInput: true, // nicer input display
      altFormat: "F j, Y H:i",
      ...this.config // preserve any data-* options
    }
    super.connect()
  }
}
