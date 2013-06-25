class CreateAvaliacaoFisicas < ActiveRecord::Migration
  def up
    create_table :avaliacao_fisicas do |t|
      t.references :anamneses
      t.references :clientes
      t.timestamps
    end
  end

  def down
    drop_table :avaliacao_fisicas
  end
end
