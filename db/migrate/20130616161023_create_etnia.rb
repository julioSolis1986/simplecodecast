class CreateEtnia < ActiveRecord::Migration
  def up
  	create_table :etnia do |t|
      t.string :nome
    end
  end

  def down
  	drop_table :etnia
  end
end
