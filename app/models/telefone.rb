class Telefone < ActiveRecord::Base
  attr_accessible :ramal, :numero

  validates_presence_of :numero
end
