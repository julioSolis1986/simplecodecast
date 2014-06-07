$(document).ready ->
  $("#js-submit_cliente").prop "disabled", "disabled"
  $("#js-cliente_nome").bind "railsAutocomplete.select", (event, data) ->
    if data.id is ""
      $("#js-submit_cliente").prop "disabled", ""
    else
      $("#js-submit_cliente").prop "disabled", "disabled"
    return

  $("table").accordion
    header: ".cliente"
    collapsible: true

  $(".cliente a").click (e) ->
    e.stopPropagation()
    return

  $("#avaliacao_fisica_body_composition_attributes_peso_atual, #avaliacao_fisica_body_composition_attributes_triciptal, #avaliacao_fisica_body_composition_attributes_subescapular, #avaliacao_fisica_body_composition_attributes_peitoral, #avaliacao_fisica_body_composition_attributes_axilar, #avaliacao_fisica_body_composition_attributes_supra_iliaca, #avaliacao_fisica_body_composition_attributes_abdominal, #avaliacao_fisica_body_composition_attributes_coxa").keyup ->
    aluno_sexo = $("#aluno_sexo").val()
    aluno_idade = $("#aluno_idade").val()
    if $("#avaliacao_fisica_body_composition_attributes_protocolo_pollock").is(":checked")
      if aluno_sexo is "Masculino"
        if $("#avaliacao_fisica_body_composition_attributes_peitoral").is(":filled") and $("#avaliacao_fisica_body_composition_attributes_abdominal").is(":filled") and $("#avaliacao_fisica_body_composition_attributes_coxa").is(":filled") and $("#avaliacao_fisica_body_composition_attributes_peso_atual").is(":filled")
          dobra_peitoral = parseFloat($("#avaliacao_fisica_body_composition_attributes_peitoral").val())
          dobra_abdominal = parseFloat($("#avaliacao_fisica_body_composition_attributes_abdominal").val())
          dobra_coxa = parseFloat($("#avaliacao_fisica_body_composition_attributes_coxa").val())
          peso = parseFloat($("#avaliacao_fisica_body_composition_attributes_peso_atual").val())
          soma = dobra_peitoral + dobra_abdominal + dobra_coxa
          densidade_corporal = 1.10938 - (0.0008267 * (soma)) + (0.0000016 * (Math.pow(soma, 2))) - (0.0002574 * (parseInt(aluno_idade)))
          percentual_gordura = ((4.95 / densidade_corporal) - 4.5) * 100
          peso_gordo = peso * (percentual_gordura / 100)
          peso_magro = peso - peso_gordo
          percentual_gordura_ideal = 10
          peso_ideal = (peso * (percentual_gordura_ideal / 100)) + peso_magro
          $("#soma_dobras").val soma
          $("#gordura_ideal").val percentual_gordura_ideal
          $("#gordura_atual").val percentual_gordura
          $("#peso_gordo").val peso_gordo
          $("#peso_magro").val peso_magro
          $("#peso_ideal").val peso_ideal
      else
        if $("#avaliacao_fisica_body_composition_attributes_triciptal").is(":filled") and $("#avaliacao_fisica_body_composition_attributes_supra_iliaca").is(":filled") and $("#avaliacao_fisica_body_composition_attributes_coxa").is(":filled") and $("#avaliacao_fisica_body_composition_attributes_peso_atual").is(":filled")
          dobra_triciptal = parseFloat($("#avaliacao_fisica_body_composition_attributes_triciptal").val())
          dobra_supra_iliaca = parseFloat($("#avaliacao_fisica_body_composition_attributes_supra_iliaca").val())
          dobra_coxa = parseFloat($("#avaliacao_fisica_body_composition_attributes_coxa").val())
          peso = parseFloat($("#avaliacao_fisica_body_composition_attributes_peso_atual").val())
          soma = dobra_triciptal + dobra_supra_iliaca + dobra_coxa
          densidade_corporal = 1.0994921 - (0.0009929 * (soma)) + (0.0000023 * (Math.pow(soma, 2))) - (0.0001392 * (parseInt(aluno_idade)))
          percentual_gordura = ((5.01 / densidade_corporal) - 4.57) * 100
          peso_gordo = peso * (percentual_gordura / 100)
          peso_magro = peso - peso_gordo
          percentual_gordura_ideal = 25
          peso_ideal = (peso * (percentual_gordura_ideal / 100)) + peso_magro
          $("#soma_dobras").val soma
          $("#gordura_ideal").val percentual_gordura_ideal
          $("#gordura_atual").val percentual_gordura
          $("#peso_gordo").val peso_gordo
          $("#peso_magro").val peso_magro
          $("#peso_ideal").val peso_ideal
    return


  # NEUROMOTORES
  $("#avaliacao_fisica_body_composition_attributes_peso_atual, #avaliacao_fisica_neuromotor_attributes_abdominal_repeticoes").keyup ->
    abdominais = $(this).val()
    aluno_sexo = $("#aluno_sexo").val()
    aluno_idade = $("#aluno_idade").val()
    if aluno_sexo is "Masculino"
      if aluno_idade <= 29
        if abdominais <= 29
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 34
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 39
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 44
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else if aluno_idade <= 39
        if abdominais <= 21
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 26
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 31
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 36
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else if aluno_idade <= 49
        if abdominais <= 16
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 20
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 25
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 31
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else if aluno_idade <= 59
        if abdominais <= 11
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 16
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 22
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 28
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else
        if abdominais <= 8
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 12
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 18
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 24
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
    else #FEMININO
      if aluno_idade <= 29
        if abdominais <= 25
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 29
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 34
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 39
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else if aluno_idade <= 39
        if abdominais <= 20
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 24
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 29
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 34
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else if aluno_idade <= 49
        if abdominais <= 15
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 19
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 24
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 29
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else if aluno_idade <= 59
        if abdominais <= 10
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 14
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 19
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 24
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
      else
        if abdominais <= 5
          $("#classificacao_abdominal").val "Deficiente"
        else if abdominais <= 9
          $("#classificacao_abdominal").val "Fraco"
        else if abdominais <= 14
          $("#classificacao_abdominal").val "Regular"
        else if abdominais <= 19
          $("#classificacao_abdominal").val "Bom"
        else
          $("#classificacao_abdominal").val "Excelente"
    return

  $("#avaliacao_fisica_neuromotor_attributes_flexao_repeticoes").keyup ->
    flexoes = $(this).val()
    aluno_sexo = $("#aluno_sexo").val()
    aluno_idade = $("#aluno_idade").val()
    if aluno_sexo is "Masculino"
      if aluno_idade <= 29
        if flexoes <= 16
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 29
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 39
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 49
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else if aluno_idade <= 39
        if flexoes <= 13
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 21
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 30
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 39
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else if aluno_idade <= 49
        if flexoes <= 10
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 17
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 26
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 34
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else if aluno_idade <= 59
        if flexoes <= 7
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 14
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 23
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 29
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else
        if flexoes <= 4
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 9
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 16
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 24
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
    else #FEMININO
      if aluno_idade <= 29
        if flexoes <= 6
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 15
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 26
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 37
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else if aluno_idade <= 39
        if flexoes <= 4
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 12
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 23
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 34
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else if aluno_idade <= 49
        if flexoes <= 3
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 9
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 20
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 31
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else if aluno_idade <= 59
        if flexoes <= 2
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 7
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 17
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 28
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
      else
        if flexoes <= 1
          $("#classificacao_flexao").val "Deficiente"
        else if flexoes <= 5
          $("#classificacao_flexao").val "Fraco"
        else if flexoes <= 12
          $("#classificacao_flexao").val "Regular"
        else if flexoes <= 19
          $("#classificacao_flexao").val "Bom"
        else
          $("#classificacao_flexao").val "Excelente"
    return


  # AVALIAÇÃO CARDIORESPIRATORIA
  $("#avaliacao_fisica_cardiorespiratory_assessment_attributes_distancia_total").keyup ->
    distancia_total = $("#avaliacao_fisica_cardiorespiratory_assessment_attributes_distancia_total").val()
    aluno_sexo = $("#aluno_sexo").val()
    aluno_idade = $("#aluno_idade").val()
    if $("#avaliacao_fisica_cardiorespiratory_assessment_attributes_protocolo_pollock").is(":checked")
      VO2max = ((distancia_total * 60 * 0.2) + 3.5) / 660
      classificacao = cardiorespiratory_assessment_pollock(aluno_sexo, aluno_idade, VO2max)
    else
      VO2max = ((distancia_total) - 504.9) / 44.73
      classificacao = cardiorespiratory_assessment_cooper(aluno_sexo, aluno_idade, distancia_total)
    $("#classificacao_cardiorespiratoria").val classificacao
    $("#vo2_maximo").val VO2max
    return

  return