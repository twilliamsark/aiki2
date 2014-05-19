# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  if $('#type').attr('value') == 'Aikido'
    $('#nav_aikido').addClass('active')
    $('#nav_iaido').removeClass('active')
  else
    $('#nav_iaido').addClass('active')
    $('#nav_aikido').removeClass('active')

