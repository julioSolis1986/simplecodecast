class TrainingSerie < ActiveRecord::Base
  belongs_to :sheet

  has_many :exercise_sheets
  accepts_nested_attributes_for :exercise_sheets, :reject_if => :all_blank
end