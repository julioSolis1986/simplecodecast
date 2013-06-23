class Endereco < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :estado
  #belongs_to :pais
  
  attr_accessible :bairro, :cep, :cidade_id, :complemento, :logradouro, :numero, :estado_id, :pais
end
