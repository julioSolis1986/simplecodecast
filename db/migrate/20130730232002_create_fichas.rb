class CreateFichas < ActiveRecord::Migration
  def up
    create_table :fichas do |t|
      t.references :clientes

      t.date :inicio
      t.date :fim

      t.string :objetivo
      t.text :observacao

      t.boolean :exemplo

      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :fichas
  end
end
