// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.



import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import '@doabit/semantic-ui-sass'
Rails.start()
Turbolinks.start()
ActiveStorage.start()

let scroll_bottom;
scroll_bottom = function() {
  if ($('#msg__container').length > 0) {
    $('#msg__container').scrollTop($('#msg__container')[0].scrollHeight);
  }
}

function sendEnter() {
  console.log("callled on keydown")
  $("#message_msg").on('keydown',function(e){
    console.log("callled on keydown")
    if (e.keyCode==13)
    {
      console.log("clicked on enter")
      $("button").click();
    }
  });
}

function start() {
  $('.ui.dropdown').dropdown();
  $('.message .close').on('click', function() {
    $(this).closest('.message').transition('fade');
  });
  $('.ui.radio.checkbox').checkbox();
  $('.ui.modal').modal('show');

  //   tinymce.init({
  //   selector: "#mytextarea",
  //   plugins: "emoticons",
  //   toolbar: "emoticons",
  //   toolbar_location: "bottom",
  //   menubar: false
  // });
  // sendEnter()
  scroll_bottom()

}

$(document).on('turbolinks:load', start)
export default scroll_bottom
