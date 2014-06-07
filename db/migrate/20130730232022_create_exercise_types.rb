class CreateExerciseTypes < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :name

      t.datetime :deleted_at
      t.timestamps
    end
  end
end