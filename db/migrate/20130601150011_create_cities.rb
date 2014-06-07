class CreateCities < ActiveRecord::Migration
  def change
  	 create_table :cities do |t|
      t.string :name
      t.boolean :capital, :default => false
      t.references :state

      t.timestamps
    end
  end
end
