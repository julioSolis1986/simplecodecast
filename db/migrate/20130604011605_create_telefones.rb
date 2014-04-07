class CreateTelefones < ActiveRecord::Migration
  def up
  	create_table :telefones do |t|
      t.string :numero
      t.string :ramal
      t.references :telefonable, :polymorphic => true

      t.timestamps
    end
  end

  def down
  	drop_table :telefones
  end
end
