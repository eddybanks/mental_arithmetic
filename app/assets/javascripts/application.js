//= require jquery
//= require jquery_ujs
//= require tether
//= require Chart.bundle
//= require chartkick
//= require bootstrap-sprockets
//= require vue
//= require vue-router
//= require vue-resource
//= require turbolinks
//= require_tree .


let startup = () => {
  contact_function()
}

$(document).on('turbolinks:load', startup)
