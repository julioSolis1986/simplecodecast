class CreatePerimeters < ActiveRecord::Migration
  def change
    create_table :perimeters do |t|
      t.references :physical_assessments

      t.timestamps
    end
  end
end
