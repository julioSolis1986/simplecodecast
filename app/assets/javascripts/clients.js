// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function () {
    $("input[alt='cep']").on('focusout', function () {
        cep = $(this).val();
        url = "/enderecos/busca_por_cep?cep=" + cep
        input = $(this)

        $.getJSON(url, function (result) {
            // alert(input.closest('.nested-fields').find('.input_logradouro').prop('class'));
            input.closest('.nested-fields').find('.input_logradouro').val(result['endereco']['tipo_logradouro'] + ' ' + result['endereco']['logradouro'])
            input.closest('.nested-fields').find('.input_bairro').val(result['endereco']['bairro'])
            input.closest('.nested-fields').find('.input_cidade').val(result['endereco']['cidade'])
            input.closest('.nested-fields').find('.input_estado').val(result['endereco']['estado'])
            // alert(result[endereco].toSource());
        });
    })
})