$(document).ready(function () {
    toogle_nome_grupo_muscular($('#exercicio_tipo_exercicio_id').val());

    $('#exercicio_tipo_exercicio_id').on('change', function () {
        toogle_nome_grupo_muscular($(this).val());
    })
});

function toogle_nome_grupo_muscular(valor) {
    if (valor == 1) {
        classe = $('.js-wrapper_nome').prop('class')
        classe = classe.replace('span4', 'span7')

        $('.js-wrapper_nome').prop('class', classe);
        $('.js-wrapper_grupo_muscular_id').toggle(false);
        $('.js-wrapper_grupo_muscular_id').find('select').prop('disabled', 'disabled');
    } else {
        classe = $('.js-wrapper_nome').prop('class')
        classe = classe.replace('span7', 'span4')

        $('.js-wrapper_nome').prop('class', classe);
        $('.js-wrapper_grupo_muscular_id').toggle(true);
        $('.js-wrapper_grupo_muscular_id').find('select').prop('disabled', '');
    }
}