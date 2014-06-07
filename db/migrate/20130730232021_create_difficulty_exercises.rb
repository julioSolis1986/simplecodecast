class CreateDifficultyExercises < ActiveRecord::Migration
  def change
    create_table :difficulty_exercises do |t|
      t.string :name

      t.timestamps
    end
  end
end
