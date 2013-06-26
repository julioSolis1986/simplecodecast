class AvaliacaoFisica < ActiveRecord::Base
  belongs_to :anamneses, :class_name => 'Anamnese'

  accepts_nested_attributes_for :anamneses

  belongs_to :cliente

  #attr_accessible :anamneses_attributes
end
