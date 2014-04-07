class CreateExerciciosFichasExercicios < ActiveRecord::Migration
  def up
    create_table :exercicios_fichas_exercicios do |t|
      t.references :exercicio
      t.references :ficha_exercicio

      t.timestamps
    end
  end

  def down
    drop_table :exercicios_fichas_exercicios
  end
end
