class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.date :birth_date
      t.references :gender
      t.string :cpf
      t.string :rg
      t.references :ethnicity
      t.text :observation

      t.datetime :deleted_at
      t.timestamps
    end
  end
end
