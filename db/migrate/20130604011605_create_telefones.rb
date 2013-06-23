class CreateTelefones < ActiveRecord::Migration
  def up
  	create_table :telefones do |t|
      t.integer :numero
      t.integer :ramal
      t.references :telefonable, :polymorphic => true

      t.timestamps
    end
  end

  def down
  	drop_table :telefones
  end
end
