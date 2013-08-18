class CreateSeriesTreinos < ActiveRecord::Migration
  def up
    create_table :series_treinos do |t|
      t.references :ficha
      t.string :nome

      t.timestamps
    end
  end

  def down
    drop_table :series_treinos
  end
end
