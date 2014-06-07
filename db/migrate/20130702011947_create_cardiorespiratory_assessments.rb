class CreateCardiorespiratoryAssessments < ActiveRecord::Migration
  def change
    create_table :cardiorespiratory_assessments do |t|
      t.references :physical_assessments

      t.string :protocol

      t.decimal :total_distance, :precision => 10, :scale => 4
      t.decimal :maximum_heart_rate, :precision => 10, :scale => 4

      t.timestamps
    end
  end
end
