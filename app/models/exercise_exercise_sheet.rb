class ExerciseExerciseSheet < ActiveRecord::Base
  belongs_to :exercise_sheet
  belongs_to :exercise
end