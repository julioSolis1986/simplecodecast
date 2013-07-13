class Cliente < ActiveRecord::Base
  attr_accessible :cpf, :data_nascimento, :etnia_id, :nome, :observacao, :rg,
  :sexo_id, :enderecos_attributes, :emails_attributes, :telefones_attributes

  validates_presence_of :sexo_id, :etnia_id, :nome, :cpf

  has_many :avaliacao_fisicas, :foreign_key => :clientes_id

	belongs_to :etnia
	belongs_to :sexo

	has_many :enderecos, :as => :enderecable
  	accepts_nested_attributes_for :enderecos

	has_many :telefones, :as => :telefonable
  	accepts_nested_attributes_for :telefones

 	has_many :emails, :as => :emaiable
  	accepts_nested_attributes_for :emails

  def idade
    hoje = Date.today
    idade = hoje.year - data_nascimento.year
    idade -= 1 if data_nascimento.strftime("%m%d").to_i > hoje.strftime("%m%d").to_i
    idade
  end
end
