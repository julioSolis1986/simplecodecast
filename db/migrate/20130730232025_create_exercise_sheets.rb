class CreateExerciseSheets < ActiveRecord::Migration
  def change
    create_table :exercise_sheets do |t|
      t.references :training_serie
      t.references :exercise_type

      t.string :series

      t.string :duration
      t.string :intensity

      t.timestamps
    end
  end
end
