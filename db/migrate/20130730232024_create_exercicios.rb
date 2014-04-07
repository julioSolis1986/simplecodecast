class CreateExercicios < ActiveRecord::Migration
  def up
    create_table :exercicios do |t|
      t.string :nome
      t.references :tipo_exercicio
      t.references :dificuldade_exercicio

      t.references :grupo_muscular
      t.text :descricao

      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :exercicios
  end
end
