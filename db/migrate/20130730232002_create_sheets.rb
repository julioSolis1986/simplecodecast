class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.references :client

      t.date :begin
      t.date :end

      t.string :goal
      t.text :observation

      t.boolean :example

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
