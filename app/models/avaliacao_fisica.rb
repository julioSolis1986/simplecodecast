class AvaliacaoFisica < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :anamneses, :class_name => 'Anamnese'
  has_one :perimetro, :class_name => 'Perimetro'
  has_one :composicao_corporal, :class_name => 'ComposicaoCorporal'
  has_one :avaliacao_cardiorespiratoria, :class_name => 'AvaliacaoCardiorespiratoria'
  has_one :neuromotor, :class_name => 'Neuromotor'

  accepts_nested_attributes_for :anamneses, :reject_if => :all_blank
  accepts_nested_attributes_for :perimetro, :reject_if => :all_blank
  accepts_nested_attributes_for :composicao_corporal, :reject_if => :all_blank
  accepts_nested_attributes_for :avaliacao_cardiorespiratoria, :reject_if => :all_blank
  accepts_nested_attributes_for :neuromotor, :reject_if => :all_blank

  belongs_to :clientes, :class_name => 'Cliente'
end
