class CreateCidades < ActiveRecord::Migration
  def up
  	 create_table :cidades do |t|
      t.string :nome
      t.boolean :capital, :default => 0
      t.integer :estado_id

      t.timestamps
    end
  end

  def down
  	drop_table :cidades
  end
end
