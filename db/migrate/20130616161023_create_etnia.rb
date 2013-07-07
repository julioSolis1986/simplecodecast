class CreateEtnia < ActiveRecord::Migration
  def up
  	create_table :etnias do |t|
      t.string :nome
    end
  end

  def down
  	drop_table :etnias
  end
end
