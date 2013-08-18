class CreateAvaliacaoPerimetros < ActiveRecord::Migration
  def up
    create_table :avaliacao_perimetros do |t|
      t.string :tipo
      t.string :nome

      t.decimal :valor_1, :precision => 10, :scale => 4
      t.decimal :valor_2, :precision => 10, :scale => 4

      t.references :perimetros
    end
  end

  def down
    drop_table :perimetros
  end
end
