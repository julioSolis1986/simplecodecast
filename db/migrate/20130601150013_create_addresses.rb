class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :complement
      t.string :number
      t.string :neighbourhood
      t.string :postal_code
      t.references :city
      t.references :state
      t.string :country
      t.references :addressable, :polymorphic => true

      t.timestamps
    end
  end
end