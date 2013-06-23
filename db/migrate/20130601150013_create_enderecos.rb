class CreateEnderecos < ActiveRecord::Migration
  def up
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :complemento
      t.string :numero
      t.string :bairro
      t.string :cep
      t.integer :cidade_id
      t.integer :estado_id
      t.integer :pais_id
      t.references :enderecable, :polymorphic => true

      t.timestamps
    end
  end

  def down
    drop_table :enderecos
  end
end