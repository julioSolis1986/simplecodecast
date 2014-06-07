// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.mask.js
//= require jquery-ui-1.10.3.custom.js
//= require cocoon
//= require highcharts.js
//= require bootstrap.js
//= require bootstrap-fileupload.js
//= require bootstrap-tagmanager.js
//= require jasny-bootstrap.js
//= require autocomplete-rails

$(document).ready(function () {
    $("input[alt='datepicker']").mask('11/11/1111');
    $("input[alt='cep']").mask('99999-999');
    $("input[alt='cpf']").mask("999.999.999-99");

    $('.conteudo-modal').on('click', function () {
        $.ajax({
            url: $(this).attr('href'),

            success: function (html) {
                $('#modal').html(html);
                $('#modal').modal();

                $('#tabs a.js-sem_href').on('click', function (e) {
                    e.preventDefault();
                    $(this).tab('show');
                });
            },
            error: function (error) {
                alert(error.toSource());
            }
        });
        return false;
    });

    $('.conteudo-modal-avaliacao').on('click', function () {
        $.ajax({
            url: $(this).attr('href'),

            success: function (html) {
                $('#modal').html(html);
                $('#modal').modal();

                $('#tabs a').on('click', function (e) {
                    e.preventDefault();
                    $(this).tab('show');
                });
            },
            error: function (error) {
                alert(error.toSource());
            }
        });
        return false;
    });

    $('#enderecos_field').bind('cocoon:after-insert', function (e, inserted_item) {
        $(inserted_item).find('.estado_cidade').popularCidade();
    });

    jQuery.ajaxSetup({
        'beforeSend': function (xhr) {
            xhr.setRequestHeader("Accept", "text/javascript")
        }
    });

    //Cria as abas
    $('#tabs a').on('click', function (e) {
        e.preventDefault();
        $(this).tab('show');
    });

    $(function () {
        $('input[alt=datepicker]').datepicker();
    });
});