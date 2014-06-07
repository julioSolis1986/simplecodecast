$(document).ready ->
  $(".sortable").sortable stop: (event, ui) ->
    alert $(this).index()
    return

  $(".js-dias_semana").on "change", ->
    $("#js-dia_" + $(this).val()).toggle()
    return

  return
