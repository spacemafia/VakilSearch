# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#complaints').masonry
    itemSelector: '.form-groups'
    isFitWidth: true

$ ->
  $('#latestarticles').masonry
    itemSelector: '.articlepos'
    isFitWidth: true

$ ->
  $('#latestquestions').masonry
    itemSelector: '.questionpos'
    isFitWidth: true