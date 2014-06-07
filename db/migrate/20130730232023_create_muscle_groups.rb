class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
      t.references :muscle_groups

      t.string :name
      t.text :description

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
