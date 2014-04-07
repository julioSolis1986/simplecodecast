class Tag < ActiveRecord::Base
  belongs_to :tageable, :polymorphic => true
  attr_accessible :nome, :descricao
end
