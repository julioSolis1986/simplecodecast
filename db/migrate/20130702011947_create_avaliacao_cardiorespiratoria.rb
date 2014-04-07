class CreateAvaliacaoCardiorespiratoria < ActiveRecord::Migration
  def up
    create_table :avaliacoes_cardiorespiratorias do |t|
      t.references :avaliacao_fisica

      t.string :protocolo

      t.decimal :distancia_total, :precision => 10, :scale => 4
      t.decimal :freq_cardiaca_maxima, :precision => 10, :scale => 4

      t.timestamps
    end
  end

  def down
    drop_table :avaliacoes_cardiorespiratorias
  end
end
