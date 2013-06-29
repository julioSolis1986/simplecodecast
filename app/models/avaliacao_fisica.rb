class AvaliacaoFisica < ActiveRecord::Base
  belongs_to :anamneses, :class_name => 'Anamnese'
  has_one :perimetro, :class_name => 'Perimetro'

  accepts_nested_attributes_for :anamneses
  accepts_nested_attributes_for :perimetro

  belongs_to :cliente
end
