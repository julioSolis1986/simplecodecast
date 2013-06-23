class CreatePaises < ActiveRecord::Migration
  def up
  	 create_table :paises do |t|
      t.string :nome

      t.timestamps
    end
  end

  def down
  	drop_table :paises
  end
end
