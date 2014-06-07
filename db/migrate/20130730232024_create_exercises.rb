class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :exercise_types
      t.references :difficulty_exercises

      t.references :muscle_groups
      t.text :description

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
