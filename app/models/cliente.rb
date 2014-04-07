class Cliente < ActiveRecord::Base
  acts_as_paranoid

  attr_accessible :cpf, :data_nascimento, :etnia_id, :nome, :observacao, :rg,
  :sexo_id, :enderecos_attributes, :emails_attributes, :telefones_attributes

  validates_presence_of :sexo_id, :etnia_id, :nome, :data_nascimento

  has_many :avaliacao_fisicas, :foreign_key => :clientes_id

	belongs_to :etnia
	belongs_to :sexo

  has_many :rastreabilidades, :as => :rastreavel
  accepts_nested_attributes_for :rastreabilidades, :reject_if => :all_blank

	has_many :enderecos, :as => :enderecable
	accepts_nested_attributes_for :enderecos, :reject_if => :all_blank

	has_many :telefones, :as => :telefonable
	accepts_nested_attributes_for :telefones, :reject_if => :all_blank

 	has_many :emails, :as => :emaiable
	accepts_nested_attributes_for :emails, :reject_if => :all_blank

  scope :uniquely_nome, group(:nome)

  def idade
    hoje = Date.today
    idade = hoje.year - data_nascimento.year
    idade -= 1 if data_nascimento.strftime("%m%d").to_i > hoje.strftime("%m%d").to_i
    idade
  end

  searchable do
    text :nome
    string :nome

    text :cpf
    text :rg
    text :observacao

    date :data_nascimento

    string :sexo do
      sexo.nome
    end

    string :etnia do
      etnia.nome
    end

    integer :idade do
      hoje = Date.today
      idade = hoje.year - data_nascimento.year
      idade -= 1 if data_nascimento.strftime("%m%d").to_i > hoje.strftime("%m%d").to_i
      idade
    end

    text :emails do
      emails.map{|c| c.email}
    end

    string :email do
      emails.blank? ? '' : emails.first.email
    end

    text :telefones do
      telefones.map{|c| c.numero}
    end

    string :telefone do
      telefones.blank? ? '' : telefones.first.numero
    end

    date :created_at
  end
end
