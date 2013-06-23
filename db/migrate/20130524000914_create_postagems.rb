class CreatePostagems < ActiveRecord::Migration
  def up
    create_table :postagems do |t|
      t.string :titulo
      t.text :conteudo
      t.boolean :status
      
      t.timestamps
    end
  end

  def down
  	drop_table :postagems
  end
end
