class CreatePhysicalAssessments < ActiveRecord::Migration
  def change
    create_table :physical_assessments do |t|
      t.references :client

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
