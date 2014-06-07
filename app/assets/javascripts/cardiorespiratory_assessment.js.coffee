cardiorespiratory_assessment_pollock = (aluno_sexo, aluno_idade, VO2max) ->
  if aluno_sexo is "Masculino"
    if aluno_idade <= 25
      if VO2max <= 30
        resultado = "Muito Baixo"
      else if VO2max <= 36
        resultado = "Baixo"
      else if VO2max <= 41
        resultado = "Abaixo da Média"
      else if VO2max <= 46
        resultado = "Média"
      else if VO2max <= 51
        resultado = "Acima da Média"
      else if VO2max <= 60
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 35
      if VO2max <= 30
        resultado = "Muito Baixo"
      else if VO2max <= 34
        resultado = "Baixo"
      else if VO2max <= 39
        resultado = "Abaixo da Média"
      else if VO2max <= 42
        resultado = "Média"
      else if VO2max <= 48
        resultado = "Acima da Média"
      else if VO2max <= 56
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 45
      if VO2max <= 26
        resultado = "Muito Baixo"
      else if VO2max <= 30
        resultado = "Baixo"
      else if VO2max <= 34
        resultado = "Abaixo da Média"
      else if VO2max <= 38
        resultado = "Média"
      else if VO2max <= 42
        resultado = "Acima da Média"
      else if VO2max <= 51
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 55
      if VO2max <= 25
        resultado = "Muito Baixo"
      else if VO2max <= 28
        resultado = "Baixo"
      else if VO2max <= 31
        resultado = "Abaixo da Média"
      else if VO2max <= 35
        resultado = "Média"
      else if VO2max <= 38
        resultado = "Acima da Média"
      else if VO2max <= 45
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 65
      if VO2max <= 22
        resultado = "Muito Baixo"
      else if VO2max <= 25
        resultado = "Baixo"
      else if VO2max <= 29
        resultado = "Abaixo da Média"
      else if VO2max <= 31
        resultado = "Média"
      else if VO2max <= 35
        resultado = "Acima da Média"
      else if VO2max <= 41
        resultado = "Bom"
      else
        resultado = "Excelente"
    else
      if VO2max <= 20
        resultado = "Muito Baixo"
      else if VO2max <= 21
        resultado = "Baixo"
      else if VO2max <= 25
        resultado = "Abaixo da Média"
      else if VO2max <= 28
        resultado = "Média"
      else if VO2max <= 31
        resultado = "Acima da Média"
      else if VO2max <= 37
        resultado = "Bom"
      else
        resultado = "Excelente"
  else #FEMININO
    if aluno_idade <= 25
      if VO2max <= 28
        resultado = "Muito Baixo"
      else if VO2max <= 32
        resultado = "Baixo"
      else if VO2max <= 37
        resultado = "Abaixo da Média"
      else if VO2max <= 41
        resultado = "Média"
      else if VO2max <= 46
        resultado = "Acima da Média"
      else if VO2max <= 56
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 35
      if VO2max <= 26
        resultado = "Muito Baixo"
      else if VO2max <= 30
        resultado = "Baixo"
      else if VO2max <= 34
        resultado = "Abaixo da Média"
      else if VO2max <= 38
        resultado = "Média"
      else if VO2max <= 44
        resultado = "Acima da Média"
      else if VO2max <= 52
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 45
      if VO2max <= 22
        resultado = "Muito Baixo"
      else if VO2max <= 26
        resultado = "Baixo"
      else if VO2max <= 30
        resultado = "Abaixo da Média"
      else if VO2max <= 33
        resultado = "Média"
      else if VO2max <= 37
        resultado = "Acima da Média"
      else if VO2max <= 45
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 55
      if VO2max <= 20
        resultado = "Muito Baixo"
      else if VO2max <= 24
        resultado = "Baixo"
      else if VO2max <= 27
        resultado = "Abaixo da Média"
      else if VO2max <= 30
        resultado = "Média"
      else if VO2max <= 33
        resultado = "Acima da Média"
      else if VO2max <= 40
        resultado = "Bom"
      else
        resultado = "Excelente"
    else if aluno_idade <= 65
      if VO2max <= 18
        resultado = "Muito Baixo"
      else if VO2max <= 21
        resultado = "Baixo"
      else if VO2max <= 24
        resultado = "Abaixo da Média"
      else if VO2max <= 27
        resultado = "Média"
      else if VO2max <= 31
        resultado = "Acima da Média"
      else if VO2max <= 37
        resultado = "Bom"
      else
        resultado = "Excelente"
    else
      if VO2max <= 17
        resultado = "Muito Baixo"
      else if VO2max <= 18
        resultado = "Baixo"
      else if VO2max <= 22
        resultado = "Abaixo da Média"
      else if VO2max <= 24
        resultado = "Média"
      else if VO2max <= 27
        resultado = "Acima da Média"
      else if VO2max <= 32
        resultado = "Bom"
      else
        resultado = "Excelente"
  resultado
cardiorespiratory_assessment_cooper = (aluno_sexo, aluno_idade, distancia_total_percorrida) ->
  if aluno_sexo is "Masculino"
    if aluno_idade <= 19
      if distancia_total_percorrida <= 2090
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 2200
        resultado = "Baixo"
      else if distancia_total_percorrida <= 2510
        resultado = "Média"
      else if distancia_total_percorrida <= 2770
        resultado = "Bom"
      else if distancia_total_percorrida <= 3000
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 29
      if distancia_total_percorrida <= 1960
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 2110
        resultado = "Baixo"
      else if distancia_total_percorrida <= 2400
        resultado = "Média"
      else if distancia_total_percorrida <= 2640
        resultado = "Bom"
      else if distancia_total_percorrida <= 2830
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 39
      if distancia_total_percorrida <= 1900
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 2090
        resultado = "Baixo"
      else if distancia_total_percorrida <= 2400
        resultado = "Média"
      else if distancia_total_percorrida <= 2510
        resultado = "Bom"
      else if distancia_total_percorrida <= 2720
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 49
      if distancia_total_percorrida <= 1830
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1990
        resultado = "Baixo"
      else if distancia_total_percorrida <= 2240
        resultado = "Média"
      else if distancia_total_percorrida <= 2460
        resultado = "Bom"
      else if distancia_total_percorrida <= 2660
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 59
      if distancia_total_percorrida <= 1660
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1870
        resultado = "Baixo"
      else if distancia_total_percorrida <= 2090
        resultado = "Média"
      else if distancia_total_percorrida <= 2320
        resultado = "Bom"
      else if distancia_total_percorrida <= 2540
        resultado = "Excelente"
      else
        resultado = "Superior"
    else
      if distancia_total_percorrida <= 1400
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1640
        resultado = "Baixo"
      else if distancia_total_percorrida <= 1930
        resultado = "Média"
      else if distancia_total_percorrida <= 2120
        resultado = "Bom"
      else if distancia_total_percorrida <= 2490
        resultado = "Excelente"
      else
        resultado = "Superior"
  else #FEMININO
    if aluno_idade <= 19
      if distancia_total_percorrida <= 1610
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1900
        resultado = "Baixo"
      else if distancia_total_percorrida <= 2080
        resultado = "Média"
      else if distancia_total_percorrida <= 2300
        resultado = "Bom"
      else if distancia_total_percorrida <= 2430
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 29
      if distancia_total_percorrida <= 1550
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1790
        resultado = "Baixo"
      else if distancia_total_percorrida <= 1970
        resultado = "Média"
      else if distancia_total_percorrida <= 2160
        resultado = "Bom"
      else if distancia_total_percorrida <= 2330
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 39
      if distancia_total_percorrida <= 1510
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1690
        resultado = "Baixo"
      else if distancia_total_percorrida <= 1960
        resultado = "Média"
      else if distancia_total_percorrida <= 2080
        resultado = "Bom"
      else if distancia_total_percorrida <= 2240
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 49
      if distancia_total_percorrida <= 1420
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1580
        resultado = "Baixo"
      else if distancia_total_percorrida <= 1790
        resultado = "Média"
      else if distancia_total_percorrida <= 2000
        resultado = "Bom"
      else if distancia_total_percorrida <= 2160
        resultado = "Excelente"
      else
        resultado = "Superior"
    else if aluno_idade <= 59
      if distancia_total_percorrida <= 1350
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1500
        resultado = "Baixo"
      else if distancia_total_percorrida <= 1690
        resultado = "Média"
      else if distancia_total_percorrida <= 1900
        resultado = "Bom"
      else if distancia_total_percorrida <= 2090
        resultado = "Excelente"
      else
        resultado = "Superior"
    else
      if distancia_total_percorrida <= 1260
        resultado = "Muito Baixo"
      else if distancia_total_percorrida <= 1390
        resultado = "Baixo"
      else if distancia_total_percorrida <= 1590
        resultado = "Média"
      else if distancia_total_percorrida <= 1750
        resultado = "Bom"
      else if distancia_total_percorrida <= 1900
        resultado = "Excelente"
      else
        resultado = "Superior"
  resultado