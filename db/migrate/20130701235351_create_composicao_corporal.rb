class CreateComposicaoCorporal < ActiveRecord::Migration
  def up
    create_table :composicoes_corporais do |t|
      t.references :avaliacao_fisica

      t.string :protocolo

      t.decimal :peso_atual, :precision => 10, :scale => 4
      t.decimal :altura, :precision => 10, :scale => 4

      t.decimal :triciptal, :precision => 10, :scale => 4
      t.decimal :subescapular, :precision => 10, :scale => 4
      t.decimal :peitoral, :precision => 10, :scale => 4
      t.decimal :axilar, :precision => 10, :scale => 4
      t.decimal :supra_iliaca, :precision => 10, :scale => 4
      t.decimal :abdominal, :precision => 10, :scale => 4
      t.decimal :coxa, :precision => 10, :scale => 4

      t.timestamps
    end
  end

  def down
    drop_table :composicoes_corporais
  end
end
