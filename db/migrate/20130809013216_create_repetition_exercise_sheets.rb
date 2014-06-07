class CreateRepetitionExerciseSheets < ActiveRecord::Migration
  def change
    create_table :repetition_exercise_sheets do |t|
      t.references :exercise_sheet
      t.string :repetition
      t.string :interval
      t.string :load

      t.timestamps
    end
  end
end
