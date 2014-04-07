class CreateClientes < ActiveRecord::Migration
  def up
    create_table :clientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.integer :sexo_id
      t.string :cpf
      t.string :rg
      t.integer :etnia_id
      t.text :observacao

      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :clientes
  end
end
