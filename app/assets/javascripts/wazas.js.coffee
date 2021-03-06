# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#show_filters').click (event) ->
    event.preventDefault()
    $('#filter_selection').show('blind')
    $('#bottom_go').show('blind')
    $('#show_filters').css('display','none')
    $('#top_go').css('display','none')
    $('#sort_row').addClass('pad_bottom')

$(document).ready ->
  $('#hide_filters').click (event) ->
    event.preventDefault()
    $('#filter_selection').hide('blind')
    $('#bottom_go').hide('blind')
    $('#show_filters').show('blind')
    $('#top_go').show('blind')
    $('#sort_row').removeClass('pad_bottom')
