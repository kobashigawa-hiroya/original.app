// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("bootstrap/dist/js/bootstrap")
require("@fortawesome/fontawesome-free/js/all")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require jquery
//= require jquery_ujs
require("trix")
require("@rails/actiontext")

// カレンダー
require('flatpickr')
require('flatpickr/dist/l10n/ja')

document.addEventListener("turbolinks:load", () => {
  flatpickr.localize(flatpickr.l10ns.ja)
  const absenceDate = flatpickr("#absence-date", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    // disableMobile: true,
  })




})