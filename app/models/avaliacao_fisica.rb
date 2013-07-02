class AvaliacaoFisica < ActiveRecord::Base
  belongs_to :anamneses, :class_name => 'Anamnese'
  has_one :perimetro, :class_name => 'Perimetro'
  has_one :composicao_corporal, :class_name => 'ComposicaoCorporal'
  has_one :avaliacao_cardiorespiratoria, :class_name => 'AvaliacaoCardiorespiratoria'
  has_one :neuromotor, :class_name => 'Neuromotor'

  accepts_nested_attributes_for :anamneses
  accepts_nested_attributes_for :perimetro
  accepts_nested_attributes_for :composicao_corporal
  accepts_nested_attributes_for :avaliacao_cardiorespiratoria
  accepts_nested_attributes_for :neuromotor

  belongs_to :cliente
end
