ready = ->
  $(document).on 'change', '.servicios form input:checkbox', () ->
    $('.servicios form').submit()

$(document).ready(ready)
$(document).on('page:load', ready)