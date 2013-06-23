class Usuario < ActiveRecord::Base
  belongs_to :endereco
  belongs_to :telefone
  belongs_to :email
  attr_accessible :data_nascimento, :login, :nome, :senha, :avatar, :enderecos_attributes, :telefone, :email
  
  has_many :enderecos, :as => :enderecable
  accepts_nested_attributes_for :enderecos
  
  has_many :telefones, :as => :telefonable
  accepts_nested_attributes_for :telefones

  has_many :emails, :as => :emaiable
  accepts_nested_attributes_for :emails

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
