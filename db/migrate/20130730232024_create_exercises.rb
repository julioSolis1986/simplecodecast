class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :exercise_type
      t.references :difficulty_exercise

      t.references :muscle_group
      t.text :description

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
