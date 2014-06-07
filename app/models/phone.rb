class Phone < ActiveRecord::Base
  attr_accessible :ext, :number

  validates_presence_of :number
end
