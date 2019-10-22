// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

console.log("vcoucou")

window.addEventListener("turbolinks:load", (event) => {

let nav_right_modal = document.getElementById('navRightModal');
let nav_right_btn_open = document.getElementById('navRightBtn');
let nav_right_btn_close = document.getElementById('navRightBtnClose');
let nav_left_modal = document.getElementById('navLeftModal');
let nav_left_btn_open = document.getElementById('navLeftBtn');

if (document.body.offsetWidth <= 780 && nav_left_modal != null) {
  if (nav_left_btn_open !=  null) {
      nav_left_btn_open.children[0].classList.add("disabled");
    }
  }

window.addEventListener('resize', function() {
  if (document.body.offsetWidth <= 780 && nav_left_modal != null) {

    nav_left_btn_open.children[0].classList.add("disabled");
  } else if (document.body.offsetWidth > 780) {
    nav_left_btn_open.children[0].classList.remove("disabled");
  }
});

$(nav_right_btn_open).on("click", function(){
  nav_right_modal.style.display = "block";
})

nav_right_btn_close.onclick = function() {
  nav_right_modal.style.display = 'none';
}

window.onclick = function(event) {
  if (event.target == nav_right_modal) {
    nav_right_modal.style.display = 'none';
  }
  else if (event.target == nav_left_modal) {
    nav_left_modal.style.display = 'none';
  }
}

if (nav_left_btn_open !=  null) {
  nav_left_btn_open.onclick = function() {
     nav_left_modal.style.display = "block";
   }
 }

});
