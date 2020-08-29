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
//= require_tree .
//= require cropper.min.js
//= require jquery.ui.widget
//= require jquery.ui.droppable
require("trix")
require("@rails/actiontext")

// カレンダー
require('flatpickr')
require('flatpickr/dist/l10n/ja')

document.addEventListener("turbolinks:load", () => {
  const createSaturdayDates = () => {
    let saturdayDates = []
    var today = new Date()
    // 今月1日
    let startDate = new Date(today.getFullYear(), today.getMonth(), 1)
    // 来月末
    let endDate = new Date(today.getFullYear(), today.getMonth() + 2, 0)
    for (var date = startDate; date < endDate; date.setDate(date.getDate() + 1)) {
      if (date.getDay() === 6) {
        // 土曜日のみ配列に代入
        // 日付オブジェクトを作り直さないと、全部来月末の配列になってしまう
        saturdayDates.push(new Date(date.getTime()))
      }
    }
    return saturdayDates
  }

  const saturdayDates = createSaturdayDates()

  // カレンダーを日本語化
  flatpickr.localize(flatpickr.l10ns.ja)
  // 欠席届けでカレンダーを使用
  flatpickr("#absence-date", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    disableMobile: true,
    dateFormat: "Y-m-d",
    minDate: "today"
  })

  // 欠席届けでカレンダーを使用
  flatpickr(".saturday", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    disableMobile: true,
    mode: "multiple",
    dateFormat: "Y-m-d",
    minDate: "today",
    enable: saturdayDates
  })

  // 欠席届けでカレンダーを使用
  flatpickr(".saturday-start", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    disableMobile: true,
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    minDate: "7:00",
    maxDate: "18:00",
  })

  // 欠席届けでカレンダーを使用
  flatpickr(".saturday-end", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    disableMobile: true,
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
    minDate: "7:00",
    maxDate: "18:00",
  })

  // 欠席届けでカレンダーを使用
  flatpickr("#absence-edit-date", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    disableMobile: true,
    dateFormat: "Y-m-d",
    minDate: "today"
  })
  // 土曜申請でカレンダーを使用
  flatpickr("#saturday_application-edit-date", {
    // スマートフォンでもカレンダーに「flatpickr」を使用
    disableMobile: true,
    dateFormat: "Y-m-d",
    minDate: "today",
    enable: saturdayDates
  })


  // document.getElementById("hidden1").style.display = "none";
  // document.getElementById("hidden2").style.display = "none";

  // document.getElementById("checkbox1").checked;
  // document.getElementById("checkbox2").checked;
  // var hidden1 = document.getElementById("#hidden1");
  // var hidden2 = document.getElementById("#hidden2");
  // if (check1 == true) {
  //   hidden1.style.display = "block";
  // } else {
  //   hidden1.style.display = "none";
  // }
  // if (check2 == true) {
  //   hidden2.style.display = "none";
  //   debugger
  // }
  // document.getElementById('saw').addEventListener('click', e => {
  //   e.hidden;


})