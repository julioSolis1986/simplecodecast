#encoding: utf-8
class Anamnese < ActiveRecord::Base
  after_initialize :build_perguntas

  def build_perguntas
    if self.new_record?
      self.pergunta_1_01 = 'Objetivos com relação à Atividade Física'

      self.pergunta_2_01 = 'Pratica atualmente algum tipo de atividade física?'
      self.pergunta_2_02 = 'Praticou algum tipo de atividade física no passado?'

      self.pergunta_3_01 = 'Seu médico já mencionou alguma vez que você tem uma condição cardíaca e que você só deve realizar atividade física recomendada por um médico?'
      self.pergunta_3_02 = 'Você sente dor no tórax quando realiza atividade física?'
      self.pergunta_3_03 = 'No mês passado, você teve dor torácica quando não estava realizando atividade física?'
      self.pergunta_3_04 = 'Você perdeu o equilíbrio por causa de tontura ou alguma vez perdeu a consciência?'
      self.pergunta_3_05 = 'Você tem algum problema ósseo ou de articulação que poderia piorar em consequência de uma alteração em sua atividade física?'
      self.pergunta_3_06 = 'Seu médico está prescrevendo medicamentos para sua pressão ou condição cardíaca?'
      self.pergunta_3_07 = 'Você conhece alguma outra razão que o impeça de realizar atividade física?'
    end
  end
end
