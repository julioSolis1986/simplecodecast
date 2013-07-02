class CreateComposicaoCorporal < ActiveRecord::Migration
  def up
    create_table :composicoes_corporais do |t|
      t.references :avaliacao_fisica

      t.string :protocolo

      t.decimal :peso_atual
      t.decimal :altura

      t.decimal :abdome
      t.decimal :antebraco
      t.decimal :coxa
      t.decimal :quadril
      t.decimal :panturrilha
      t.decimal :braco

      t.timestamps
    end
  end

  def down
    drop_table :composicoes_corporais
  end
end
