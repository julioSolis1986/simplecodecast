class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.text :description
      t.references :tageable, :polymorphic => true

      t.timestamps
    end

    add_index :tags, :tageable_id
  end
end
