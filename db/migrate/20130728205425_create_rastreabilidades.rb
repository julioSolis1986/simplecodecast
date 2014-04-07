class CreateRastreabilidades < ActiveRecord::Migration
  def up
    create_table :rastreabilidades do |t|
      t.references :rastreavel, :polymorphic => true
      t.references :usuario
      
      t.string :acao
      t.text :mensagem

      t.timestamps
    end
  end

  def down
    drop_table :rastreabilidades
  end
end
