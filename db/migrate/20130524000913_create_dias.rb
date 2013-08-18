#encoding: utf-8
class CreateDias < ActiveRecord::Migration
  def up
    create_table :dias do |t|
      t.string :nome

      t.timestamps
    end

    Dia.create!(:nome => 'Segunda')
    Dia.create!(:nome => 'Terça')
    Dia.create!(:nome => 'Quarta')
    Dia.create!(:nome => 'Quinta')
    Dia.create!(:nome => 'Sexta')
    Dia.create!(:nome => 'Sábado')
    Dia.create!(:nome => 'Domingo')
  end

  def down
    drop_table :dias
  end
end