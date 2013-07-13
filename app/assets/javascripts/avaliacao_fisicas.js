// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('table').accordion({header: '.cliente',
                        collapsible: true});
  
  $('.cliente a').click(function(e) {
    e.stopPropagation();
  })

  // NEUROMOTORES
  $('#avaliacao_fisica_neuromotor_attributes_abdominal_repeticoes').keyup(function() {
    abdominais = $(this).val();
    aluno_sexo = $('#aluno_sexo').val();
    aluno_idade = $('#aluno_idade').val();

    if(aluno_sexo == 'Masculino') {
      if(aluno_idade <= 29) {
        if(abdominais <= 29) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 34) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 39) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 44) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
      else if(aluno_idade <= 39) {
        if(abdominais <= 21) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 26) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 31) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 36) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      } 
      else if(aluno_idade <= 49) {
        if(abdominais <= 16) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 20) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 25) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 31) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
      else if(aluno_idade <= 59) {
        if(abdominais <= 11) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 16) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 22) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 28) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
      else {
        if(abdominais <= 8) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 12) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 18) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 24) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
    }
    else { //FEMININO
      if(aluno_idade <= 29) {
        if(abdominais <= 25) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 29) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 34) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 39) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
      else if(aluno_idade <= 39) {
        if(abdominais <= 20) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 24) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 29) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 34) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      } 
      else if(aluno_idade <= 49) {
        if(abdominais <= 15) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 19) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 24) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 29) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
      else if(aluno_idade <= 59) {
        if(abdominais <= 10) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 14) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 19) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 24) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
      else {
        if(abdominais <= 5) {
          $('#classificacao_abdominal').val('Deficiente');
        }
        else if(abdominais <= 9) {
          $('#classificacao_abdominal').val('Fraco');
        }
        else if(abdominais <= 14) {
          $('#classificacao_abdominal').val('Regular');
        }
        else if(abdominais <= 19) {
          $('#classificacao_abdominal').val('Bom');
        }
        else {
          $('#classificacao_abdominal').val('Excelente');
        }
      }
    }
  })

    $('#avaliacao_fisica_neuromotor_attributes_flexao_repeticoes').keyup(function() {
    flexoes = $(this).val();
    aluno_sexo = $('#aluno_sexo').val();
    aluno_idade = $('#aluno_idade').val();

    if(aluno_sexo == 'Masculino') {
      if(aluno_idade <= 29) {
        if(flexoes <= 16) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 29) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 39) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 49) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
      else if(aluno_idade <= 39) {
        if(flexoes <= 13) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 21) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 30) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 39) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      } 
      else if(aluno_idade <= 49) {
        if(flexoes <= 10) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 17) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 26) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 34) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
      else if(aluno_idade <= 59) {
        if(flexoes <= 7) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 14) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 23) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 29) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
      else {
        if(flexoes <= 4) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 9) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 16) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 24) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
    }
    else { //FEMININO
      if(aluno_idade <= 29) {
        if(flexoes <= 6) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 15) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 26) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 37) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
      else if(aluno_idade <= 39) {
        if(flexoes <= 4) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 12) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 23) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 34) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      } 
      else if(aluno_idade <= 49) {
        if(flexoes <= 3) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 9) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 20) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 31) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
      else if(aluno_idade <= 59) {
        if(flexoes <= 2) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 7) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 17) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 28) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
      else {
        if(flexoes <= 1) {
          $('#classificacao_flexao').val('Deficiente');
        }
        else if(flexoes <= 5) {
          $('#classificacao_flexao').val('Fraco');
        }
        else if(flexoes <= 12) {
          $('#classificacao_flexao').val('Regular');
        }
        else if(flexoes <= 19) {
          $('#classificacao_flexao').val('Bom');
        }
        else {
          $('#classificacao_flexao').val('Excelente');
        }
      }
    }
  })
});