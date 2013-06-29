class CreateAvaliacaoPerimetros < ActiveRecord::Migration
  def up
    create_table :avaliacao_perimetros do |t|
      t.string :tipo
      t.string :nome

      t.integer :valor_1
      t.integer :valor_2

      t.references :perimetros
    end
  end

  def down
    drop_table :perimetros
  end
end
