class CreateFichasExercicios < ActiveRecord::Migration
  def up
    create_table :fichas_exercicios do |t|
      t.references :serie_treino
      t.references :tipo_exercicio

      t.string :series

      t.string :duracao
      t.string :intensidade

      t.timestamps
    end
  end

  def down
    drop_table :fichas_exercicios
  end
end
