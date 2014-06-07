class CreateExerciseExamples < ActiveRecord::Migration
  def change
    create_table :exercise_examples do |t|
      t.attachment :image
      t.references :exercises

      t.timestamps
    end
  end
end
