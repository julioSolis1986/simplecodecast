class CreateRepeticoesFichasExercicios < ActiveRecord::Migration
  def up
    create_table :repeticoes_fichas_exercicios do |t|
      t.references :ficha_exercicio
      t.string :repeticoes
      t.string :intervalos
      t.string :cargas

      t.timestamps
    end
  end

  def down
    drop_table :repeticoes_fichas_exercicios
  end
end
