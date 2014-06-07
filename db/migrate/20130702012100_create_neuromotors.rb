class CreateNeuromotors < ActiveRecord::Migration
  def change
    create_table :neuromotors do |t|
      t.references :physical_assessments

      t.integer :abdominal_repetitions
      t.integer :pushup_repetitions

      t.timestamps
    end
  end
end
