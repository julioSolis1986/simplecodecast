class Endereco < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :estado
  #belongs_to :pais

  scope :uniquely_logradouro, group(:logradouro)
  scope :uniquely_bairro, group(:bairro)

  validates_presence_of :logradouro, :numero, :bairro, :cidade_id, :estado_id, :pais
  
  attr_accessible :bairro, :cep, :cidade_id, :complemento, :logradouro, :numero, :estado_id, :pais
end
