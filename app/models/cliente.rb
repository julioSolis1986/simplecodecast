class Cliente < ActiveRecord::Base
  attr_accessible :cpf, :data_nascimento, :etnia_id, :nome, :observacao, :rg, 
  :sexo_id, :enderecos_attributes, :emails_attributes, :telefones_attributes

	belongs_to :etnia
	belongs_to :sexo

	has_many :enderecos, :as => :enderecable
  	accepts_nested_attributes_for :enderecos
  
	has_many :telefones, :as => :telefonable
  	accepts_nested_attributes_for :telefones

 	has_many :emails, :as => :emaiable
  	accepts_nested_attributes_for :emails
end
