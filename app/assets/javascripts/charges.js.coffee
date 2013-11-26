# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ -> 
  $(".plan_id select").change ->
    # $('.stripe-button').attr('data-description', $(".plan_id option:selected").text())
    $('iframe.stripe_checkout_app').contents().find('h2').html('cool')
