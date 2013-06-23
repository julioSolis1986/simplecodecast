class CreateEstados < ActiveRecord::Migration
  def up
  	 create_table :estados do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end

  def down
  	drop_table :estados
  end
end
