class CreateTags < ActiveRecord::Migration
  def up
    create_table :tags do |t|
      t.string :nome
      t.text :descricao
      t.references :tageable, :polymorphic => true

      t.timestamps
    end
    add_index :tags, :tageable_id
  end

  def down
  	drop_table :tags
  end
end
