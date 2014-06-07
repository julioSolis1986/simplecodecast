class Post < ActiveRecord::Base
	attr_accessible :content, :status, :title, :tags_attributes
	default_value_for :status, false

	has_many :tags, :as => :tageable
	accepts_nested_attributes_for :tags, :reject_if => :all_blank
end
