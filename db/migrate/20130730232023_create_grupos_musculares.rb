class CreateGruposMusculares < ActiveRecord::Migration
  def up
    create_table :grupos_musculares do |t|
      t.references :grupos_musculares

      t.string :nome
      t.text :descricao

      t.datetime :deleted_at
      t.timestamps
    end
  end

  def down
    drop_table :grupos_musculares
  end
end
