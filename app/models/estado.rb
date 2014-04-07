class Estado < ActiveRecord::Base
	has_many :cidades
  	attr_accessible :nome, :sigla
end