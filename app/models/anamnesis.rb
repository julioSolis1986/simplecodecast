class Anamnesis < ActiveRecord::Base
  after_initialize :build_questions

  def build_questions
    if self.new_record?
      self.question_1_01 = 'Objetivos com relação à Atividade Física'

      self.question_2_01 = 'Pratica atualmente algum tipo de atividade física?'
      self.question_2_02 = 'Praticou algum tipo de atividade física no passado?'

      self.question_3_01 = 'Seu médico já mencionou alguma vez que você tem uma condição cardíaca e que você só deve realizar atividade física recomendada por um médico?'
      self.question_3_02 = 'Você sente dor no tórax quando realiza atividade física?'
      self.question_3_03 = 'No mês passado, você teve dor torácica quando não estava realizando atividade física?'
      self.question_3_04 = 'Você perdeu o equilíbrio por causa de tontura ou alguma vez perdeu a consciência?'
      self.question_3_05 = 'Você tem algum problema ósseo ou de articulação que poderia piorar em consequência de uma alteração em sua atividade física?'
      self.question_3_06 = 'Seu médico está prescrevendo medicamentos para sua pressão ou condição cardíaca?'
      self.question_3_07 = 'Você conhece alguma outra razão que o impeça de realizar atividade física?'
    end
  end
end
