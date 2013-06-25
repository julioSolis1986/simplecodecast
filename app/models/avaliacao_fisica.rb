class AvaliacaoFisica < ActiveRecord::Base
  belongs_to :anamnese, :primary_key => :anamneses_id
  belongs_to :cliente
end
