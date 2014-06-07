class CreatePhones < ActiveRecord::Migration
  def change
  	create_table :phones do |t|
      t.string :number
      t.string :ext
      t.references :phonable, :polymorphic => true

      t.timestamps
    end
  end
end
