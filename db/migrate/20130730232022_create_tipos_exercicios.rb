#encoding: utf-8
class CreateTiposExercicios < ActiveRecord::Migration
  def up
    create_table :tipos_exercicios do |t|
      t.string :nome

      t.datetime :deleted_at
      t.timestamps
    end

    TipoExercicio.create!(:nome => 'Aeróbico')
    TipoExercicio.create!(:nome => 'Anaeróbico')
  end

  def down
    drop_table :tipos_exercicios
  end
end