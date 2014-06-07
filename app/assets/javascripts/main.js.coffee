$(document).ready ->
  $("input[alt='datepicker']").mask "11/11/1111"
  $("input[alt='cep']").mask "99999-999"
  $("input[alt='cpf']").mask "999.999.999-99"
  $(".conteudo-modal").on "click", ->
    $.ajax
      url: $(this).attr("href")
      success: (html) ->
        $("#modal").html html
        $("#modal").modal()
        $("#tabs a.js-sem_href").on "click", (e) ->
          e.preventDefault()
          $(this).tab "show"
          return

        return

      error: (error) ->
        alert error.toSource()
        return

    false

  $(".conteudo-modal-avaliacao").on "click", ->
    $.ajax
      url: $(this).attr("href")
      success: (html) ->
        $("#modal").html html
        $("#modal").modal()
        $("#tabs a").on "click", (e) ->
          e.preventDefault()
          $(this).tab "show"
          return

        return

      error: (error) ->
        alert error.toSource()
        return

    false

  $("#enderecos_field").bind "cocoon:after-insert", (e, inserted_item) ->
    $(inserted_item).find(".estado_cidade").popularCidade()
    return

  jQuery.ajaxSetup beforeSend: (xhr) ->
    xhr.setRequestHeader "Accept", "text/javascript"
    return


  #Cria as abas
  $("#tabs a").on "click", (e) ->
    e.preventDefault()
    $(this).tab "show"
    return

  $ ->
    $("input[alt=datepicker]").datepicker()
    return

  return
