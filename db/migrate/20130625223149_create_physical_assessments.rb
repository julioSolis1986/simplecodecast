class CreatePhysicalAssessments < ActiveRecord::Migration
  def change
    create_table :physical_assessments do |t|
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
