#encoding: utf-8
class CreateDificuldadeExercicio < ActiveRecord::Migration
  def up
    create_table :dificuldades_exercicios do |t|
      t.string :nome

      t.timestamps
    end

    DificuldadeExercicio.create(:nome => 'Fácil')
    DificuldadeExercicio.create(:nome => 'Médio')
    DificuldadeExercicio.create(:nome => 'Difícil')
    DificuldadeExercicio.create(:nome => 'Muito Difícil')
  end

  def down
    create_table :dificuldades_exercicios
  end
end
