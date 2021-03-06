// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require turbolinks
//= require clipboard
//= require_tree .

$(document).ready(function(){
  let distance = $('body').scrollTop();
  if (distance !== 0) {
    $('.first-animation').remove();
    $('body').addClass('loadFast');
    $('body').off('scroll touchmove mousewheel');
  } else {
    $('body').addClass('loadSlow');
    $('body').on('scroll touchmove mousewheel', function(e){
      e.preventDefault();
      e.stopPropagation();
    });
  }
});

$(document).ready(function() {
  $('.first-animation').addClass('activeBG');
  setInterval(function(){ 
    $('body').off('scroll touchmove mousewheel');
    $('.nav-up').removeClass('nav-up');
    $('.first-animation').remove();
  }, 7500);
});