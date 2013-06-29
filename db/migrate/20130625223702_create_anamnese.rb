class CreateAnamnese < ActiveRecord::Migration
  def up
    create_table :anamneses do |t|
      t.string :pergunta_1_01

      t.string :pergunta_2_01
      t.string :pergunta_2_02

      t.string :pergunta_3_01
      t.string :pergunta_3_02
      t.string :pergunta_3_03
      t.string :pergunta_3_04
      t.string :pergunta_3_05
      t.string :pergunta_3_06
      t.string :pergunta_3_07
      t.string :pergunta_3_08
      t.string :pergunta_3_09
      t.string :pergunta_3_10

      t.text :resposta_1_01

      t.boolean :resposta_2_01
      t.boolean :resposta_2_02

      t.boolean :resposta_3_01
      t.boolean :resposta_3_02
      t.boolean :resposta_3_03
      t.boolean :resposta_3_04
      t.boolean :resposta_3_05
      t.boolean :resposta_3_06
      t.boolean :resposta_3_07
      t.boolean :resposta_3_08
      t.boolean :resposta_3_09
      t.boolean :resposta_3_10
      t.references :avaliacao_fisica

      t.timestamps
    end
  end

  def down
    drop_table :anamneses
  end
end
