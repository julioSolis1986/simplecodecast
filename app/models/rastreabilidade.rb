class Rastreabilidade < ActiveRecord::Base  
  attr_accessible :acao, :texto

  belongs_to :usuario
end
