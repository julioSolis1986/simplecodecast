class CreateSexo < ActiveRecord::Migration
  def up
  	create_table :sexos do |t|
      t.string :nome
    end
  end

  def down
  	drop_table :sexos
  end
end
