class CreatePerimetros < ActiveRecord::Migration
  def up
    create_table :perimetros do |t|
      t.references :avaliacao_fisica

      t.timestamps
    end
  end

  def down
    drop_table :perimetros
  end
end
