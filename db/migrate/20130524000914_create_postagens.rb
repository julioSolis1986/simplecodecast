class CreatePostagens < ActiveRecord::Migration
  def up
    create_table :postagens do |t|
      t.string :titulo
      t.text :conteudo
      t.boolean :status

      t.timestamps
    end
  end

  def down
    drop_table :postagens
  end
end