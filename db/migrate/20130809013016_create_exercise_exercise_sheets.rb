class CreateExerciseExerciseSheets < ActiveRecord::Migration
  def change
    create_table :exercise_exercise_sheets do |t|
      t.references :exercise
      t.references :exercise_sheet

      t.timestamps
    end
  end
end
