class AssessmentPerimeter < ActiveRecord::Base
  attr_accessible :type, :name, :value_1, :value_2

  belongs_to :perimeter
end
