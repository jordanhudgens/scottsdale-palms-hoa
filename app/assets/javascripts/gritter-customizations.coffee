ready = ->
  $(document).on 'click', '.gritter-item', (event) ->
    $(this).fadeOut();
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
