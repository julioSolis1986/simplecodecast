class ExerciseSheet < ActiveRecord::Base
  belongs_to :day
  belongs_to :training_serie
  belongs_to :exercise

  has_many :exercise_exercise_sheets
  accepts_nested_attributes_for :exercise_exercise_sheets, :reject_if => :all_blank

  has_many :repetition_exercise_sheets
  accepts_nested_attributes_for :repetition_exercise_sheets, :reject_if => :all_blank
end