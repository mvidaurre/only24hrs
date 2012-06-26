$(document).ready ->
  if not Modernizr.input.autofocus
    $('#user_email').trigger 'focus'