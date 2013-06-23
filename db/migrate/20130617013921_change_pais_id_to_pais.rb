class ChangePaisIdToPais < ActiveRecord::Migration
  def up
  	add_column :enderecos, :pais, :string
  end

  def down
  	remove_column :enderecos, :pais
  end
end
