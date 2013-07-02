class CreateNeuromotores < ActiveRecord::Migration
  def up
    create_table :neuromotores do |t|
      t.references :avaliacao_fisica

      t.integer :abdominal_repeticoes
      t.integer :flexao_repeticoes

      t.timestamps
    end
  end

  def down
    drop_table :neuromotores
  end
end
