class CreateAssessmentPerimeters < ActiveRecord::Migration
  def change
    create_table :assessment_perimeters do |t|
      t.string :type
      t.string :name

      t.decimal :value_1, :precision => 10, :scale => 4
      t.decimal :value_2, :precision => 10, :scale => 4

      t.references :perimeters
    end
  end
end
