$(document).ready ->
  $("input[alt='cep']").on "focusout", ->
    cep = $(this).val()
    url = "/enderecos/busca_por_cep?cep=" + cep
    input = $(this)
    $.getJSON url, (result) ->
      input.closest(".nested-fields").find(".input_logradouro").val result["endereco"]["tipo_logradouro"] + " " + result["endereco"]["logradouro"]
      input.closest(".nested-fields").find(".input_bairro").val result["endereco"]["bairro"]
      input.closest(".nested-fields").find(".input_cidade").val result["endereco"]["cidade"]
      input.closest(".nested-fields").find(".input_estado").val result["endereco"]["estado"]