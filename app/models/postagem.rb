class Postagem < ActiveRecord::Base
	attr_accessible :conteudo, :status, :titulo, :tags_attributes
	default_value_for :status, false

	has_many :tags, :as => :tageable
	accepts_nested_attributes_for :tags, :reject_if => :all_blank
end
