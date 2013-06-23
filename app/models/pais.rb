class Pais < ActiveRecord::Base
	set_table_name 'paises'

  	attr_accessible :nome
end