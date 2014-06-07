class City < ActiveRecord::Base
  attr_accessible :name, :capital

	belongs_to :state
end