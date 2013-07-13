class CreateUsuarios < ActiveRecord::Migration
  def up
    create_table :usuarios do |t|
      t.string :nome
      t.date :data_nascimento
      t.integer :sexo_id
      t.string :login
      t.string :senha
      t.has_attached_file :avatar

      t.timestamps
    end
  end

  def down
    drop_table :usuarios
  end
end
