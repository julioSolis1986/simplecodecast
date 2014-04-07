class CreateExemploExercicio < ActiveRecord::Migration
  def up
    create_table :exemplos_exercicios do |t|
      t.attachment :imagem
      t.references :exercicio

      t.timestamps
    end
  end

  def down
    drop_table :exemplos_exercicios
  end
end
