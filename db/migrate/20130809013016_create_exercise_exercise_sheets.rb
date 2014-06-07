class CreateExerciseExerciseSheets < ActiveRecord::Migration
  def change
    create_table :exercise_exercise_sheets do |t|
      t.references :exercises
      t.references :exercise_sheets

      t.timestamps
    end
  end
end
