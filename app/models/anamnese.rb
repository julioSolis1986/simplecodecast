class Anamnese < ActiveRecord::Base
  belongs_to :avaliacao_fisica

  after_initiliaze :build_perguntas

  def build_perguntas
    raise 'a'.inspect
    if self.new_record?
      self.pergunta_1_01 = 'Objetivos com relação à Atividade Física'

      self.pergunta_2_01 = 'Pratica atualmente algum tipo de atividade física?'
      self.pergunta_2_01 = 'Praticou algum tipo de atividade física no passado?'

      self.pergunta_3_01 = 'Doenças na família nos últimos anos?'
      self.pergunta_3_02 = 'Doenças pessoais nos últimos anos?'
      self.pergunta_3_03 = 'Possui alguma restrição à prática de atividade física?'
      self.pergunta_3_04 = 'Foi submetido à algum tipo de cirurgia?'
      self.pergunta_3_05 = 'Possui algum tipo de alergia?'
      self.pergunta_3_06 = 'Sofreu algum acidente ou lesão osteo-muscular?'
      self.pergunta_3_07 = 'Utiliza algum tipo de medicamento?'
      self.pergunta_3_08 = 'Ultimamente tem sentido dores no corpo?'
      self.pergunta_3_09 = 'Tem ou teve o hábito de fumar?'
      self.pergunta_3_10 = 'Está em dieta para perder ou ganhar peso?'
    end
  end
end
