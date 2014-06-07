$.fn.popularCidade = ->
  that = this
  $.post that.attr("rel"),
    id: that.val()
    id_input: $(this).parent().find(".cidade_estado").prop("id")
  , null, "script"
  @change ->
    $.post that.attr("rel"),
      id: that.val()
      id_input: $(this).parent().find(".cidade_estado").prop("id")
    , null, "script"
    return

  return