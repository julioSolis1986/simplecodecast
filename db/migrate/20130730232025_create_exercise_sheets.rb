class CreateExerciseSheets < ActiveRecord::Migration
  def change
    create_table :exercise_sheets do |t|
      t.references :training_series
      t.references :exercise_types

      t.string :series

      t.string :duration
      t.string :intensity

      t.timestamps
    end
  end
end
